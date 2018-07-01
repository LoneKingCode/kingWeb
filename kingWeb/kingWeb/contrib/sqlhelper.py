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
        raw = cursor.fetchone() #返回结果行 或使用 #raw = cursor.fetchall()
        return sqlhelper.dictfetchall(cursor)
        pass

    @staticmethod
    def single(sql):
        query_result = sqlhelper.query(sql)
        firstrow =  query_result[0]
        return firstrow[firstrow.keys()[0]]
        pass

    @staticmethod
    def dictfetchall(cursor):
        #"Return all rows from a cursor as a dict"
        columns = [col[0] for col in cursor.description]
        return [
            dict(zip(columns, row))
            for row in cursor.fetchall()
        ]
    @staticmethod
    def namedtuplefetchall(cursor):
        #"Return all rows from a cursor as a namedtuple"
        desc = cursor.description
        nt_result = namedtuple('Result', [col[0] for col in desc])
        return [nt_result(*row) for row in cursor.fetchall()]

