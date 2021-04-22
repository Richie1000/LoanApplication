#all imports must be done
import os.path
import mysql.connector
import mysql
import _mysql_connector
from mysql.connector import cursor


class dataBase:
    Host = "localhost"
    user = "root"
    password = "password1234"

    loanDB = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "password1234"
        )
    cursor = loanDB.cursor()
    def creatDB(self):
        cursor.execute("CREATE DATABASE clientdb")
        loanDB = _mysql_connector.connect(
            host="localhost",
            user="root",
            password="password1234",
            database="clientdb"
        )


    def create_customerTable(self):
        sql = "CREATE TABLE customer (first_Name varchar(30), surname varchar (30), other_names varchar(30), year_of_birth int (4), month_of_birth int (4), day_of_birth int(4), sex char(1) )"
        cursor.execute(sql)

    def create_contactTable(self):
        sql = "CREATE TABLE contact (phone1 int (10), phone2 int(10), sec_phone int (10), email varchar(30), pos_add varchar (30), res_add varchar(40), reg_of_res varchar(15) "
        cursor.execute(sql)

    def create_occupationTable(self):
        sql = "CREATE TABLE occupation (occ varchar(20), employer varchar(30), high_edu varchar(20), ssn varchar(15), tin varchar(15), emp_Address(30)"
        cursor.execute(sql)

    def create_familyTable(self):
        sql = "CREATE TABLE family (married char(1), spouse_name varchar(40), children int(1), nok varchar(40), nok_relation varchar(10), nok_contact int (10), nok_age int(2)"
        cursor.execute(sql)


data = dataBase()
data.creatDB()
data.create_contactTable()
data.create_familyTable()
data.create_occupationTable()
data.create_customerTable()
