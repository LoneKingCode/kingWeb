from django.db import connection,transaction,IntegrityError

class sqlhelper(object):

    @staticmethod
    def execute(sql):
        cursor = connection.cursor()
        sid = transaction.savepoint()
        try:
            cursor.execute(sql)
            transaction.savepoint_commit(sid)
        except IntegrityError:
            transaction.savepoint_rollback(sid)

    @staticmethod
    def bulk_execute(sqllist):
        cursor = connection.cursor()
        sid = transaction.savepoint()
        try:
            for sql in sqllist:
               cursor.execute(sql)
            transaction.savepoint_commit(sid)
        except IntegrityError:
            transaction.savepoint_rollback(sid)

    @staticmethod
    def query(sql):
        cursor = connection.cursor()
        cursor.execute(sql)
        col_names = [desc[0] for desc in cursor.description]
        rawData = cursor.fetchall()
        result = []
        for row in rawData:
            objDict = {}
            # 把每一行的数据遍历出来放到Dict中
            for index, value in enumerate(row):
                objDict[col_names[index]] = value

            result.append(objDict)

        return result
        pass

    @staticmethod
    def single(sql):
        query_result = sqlhelper.query(sql)
        if len(query_result) > 0:
            firstrow = query_result[0]
            return firstrow[list(firstrow.keys())[0]]
        else:
            return ''
