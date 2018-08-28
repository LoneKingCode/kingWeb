import os
from kingWeb.util.LogHelper import LogHelper
def clear_temp_file():
    BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    #临时文件夹
    TEMP_PATH = os.path.abspath(os.path.join(BASE_DIR,'upload/temp'))
    try:
        delete_dir(TEMP_PATH)
    except Exception as e:
        LogHelper.error('删除临时文件出错，' + str(e))

def delete_dir(path):
    #禁止删除的后缀
    FORBIDDEN_DELETE_EXTENSION = ['.aaa']
    ls = os.listdir(path)
    dirs = []
    for l in ls:
        file_path = os.path.join(path, l)
        if os.path.isdir(file_path):
            delete_dir(file_path)
            dirs.append(file_path)
        else:
            os.remove(file_path)
    for dir in dirs:
        os.removedirs(dir)


if __name__ == '__main__':
    clear_temp_file()