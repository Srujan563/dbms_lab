import mysql.connector
db = mysql.connector.connect(user="root", passwd='pwd', db="UserDB")
cursor = db.cursor()
class Mysqlhandler:
    def __init__(self):
        pass
    def add_user(self,a1,a2,a3):
        query="INSERT INTO user_data values('{}',{},'{}')".format(a1,a2,a3)
        cursor.execute(query)
        db.commit()
    def update_user(self,name,dob,pno):
        query=("update user_data set name='{}',dob='{}' where phno={}".format(name,dob,pno))
        cursor.execute(query)
        db.commit()
       
    def delete_user(self,pno):
        query=("Delete from user_data  where pno='{}'".format(pno))
        cursor.execute(query)
        db.commit()
       
    def display_user(self,value):
        query=("select * from user_data where name='{}'".format(value))
        cursor.execute(query)


