import psutil
import time
import json
import os
import sys
import django
import platform
from kingWeb.settings import ROOT_PATH
class ServerInfo:
    def __init__(self):
        self.machine_name = ''
        self.current_directory = ''
        self.os_version_string = ''
        self.server_ip = ''
        self.server_url = ''
        self.server_port = ''
        self.runtime_framework = ''
        self.logged_username = ''
        self.cpu_used = ''
        self.memory_total = ''
        self.memory_used = ''
        self.memory_used_n = ''
        self.memory_avaliable_n = ''
        self.memory_avaliable = ''
        self.disk_read = ''
        self.disk_write = ''
        self.disks = []
        self.networks = []

class NetworkInfo:
    def __init__(self):
        self.name = ''
        self.totalsent = ''
        self.totalreceived = ''

class DiskInfo:
    def __init__(self):
        self.name = ''
        self.total_space = ''
        self.free_space_n = '' #可用空间（数字）
        self.used_space_n = ''
        self.free_space = ''
        self.used_space = ''

class ServerInfoHelper(object):
    @staticmethod
    def get_info(request):
        info = ServerInfo()
        #获取内存 cpu信息
        vir_mem = psutil.virtual_memory()
        info.memory_total = vir_mem.total
        info.memory_avaliable_n = vir_mem.available
        info.memory_used = round(vir_mem.percent,2)
        info.memory_used_n = vir_mem.total - vir_mem.available
        info.memory_avaliable = round(100.0 - vir_mem.percent,2)
        info.cpu_used = psutil.cpu_percent(interval = 1)
        ioinfo = psutil.disk_io_counters()
        info.disk_read = ioinfo.read_bytes
        info.disk_write = ioinfo.write_bytes
        info.logged_username = psutil.users()[0].name
        info.disks = ServerInfoHelper.get_disk_info()
        info.networks = ServerInfoHelper.get_network_info()
        info.machine_name = os.environ['COMPUTERNAME']
        info.runtime_framework = 'python:' + (str(sys.version_info.major) + '.' + str(sys.version_info.minor) + '.' \
            + str(sys.version_info.micro)) + ' django:' + django.get_version()
        info.os_version_string = platform.system() + ' ' + platform.version()
        info.current_directory = ROOT_PATH
        info.server_ip = ServerInfoHelper.get_host_ip()
        info.server_url = request.META['SERVER_HOST']
        info.server_port = request.META['SERVER_PORT']
        return info
    @staticmethod
    def get_network_info():
        result = []
        networks = psutil.net_io_counters(pernic=True)
        for k,v in networks.items():
            net = networks[k]
            info = NetworkInfo()
            info.name = k
            info.totalsent = net.bytes_sent
            info.totalreceived = net.bytes_recv
            result.append(info)
        return result
    @staticmethod
    def get_disk_info():
        result = []
        disk = psutil.disk_partitions()
        for d in disk:
            info = DiskInfo()
            if 'fixed' in d.opts:
                info.name = d.device
                usage = psutil.disk_usage(d.device)
                info.free_space_n = usage.free
                info.used_space_n = usage.used
                info.used_space = usage.percent
                info.free_space = round(100.0 - usage.percent,1)
                result.append(info)
        return result
    @staticmethod
    def get_host_ip():
        import socket
        ip = '127.0.0.1'
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            s.connect(('8.8.8.8', 80))
            ip = s.getsockname()[0]
        except :
            pass
        return ip

if __name__ == '__main__':
    print(json.dumps(ServerInfoHelper.get_info(),default=lambda \
    o:o.__dict__,sort_keys=True,indent=4))
