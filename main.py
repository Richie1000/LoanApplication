# This Python file uses the following encoding: utf-8
import sys
import os
import datetime
import mysql.connector

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Signal, QTimer

customerId = 0

class MainWindow(QObject):
    def __init__(self):
        QObject.__init__(self)

        #QTimer Function
        self.timer = QTimer()
        self.timer.timeout.connect(lambda: self.setTime())
        self.timer.start(1000)


    #set Name
    setName = Signal(str)

    #Signal setTime
    printTime = Signal(str)

    #loginStatus
    loginStatus = Signal(int)

    @Slot(str, str)
    def authenticate(self, username, password):
         db = mysql.connector.connect(
                host = "localhost",
                user = "root",
                passwd = "",
                database = "loan_system"
            )
         mycursor = db.cursor(buffered =True)
         mycursor.execute("SELECT * FROM officers WHERE email = %s AND password = %s", (username, password))
         rowcount = mycursor.rowcount
         print(rowcount)
         if rowcount == 0:
            print("Login Unsuccessful")
            self.loginStatus.emit(rowcount)

         else:
            print("Login successful!")
            self.loginStatus.emit(rowcount)
            mycursor.close()


    #Set Time Function
    def setTime(self):
        now = datetime.datetime.now()
        formatDate = now.strftime("%H:%M:%S ")
        #print(formatDate)
        self.printTime.emit(formatDate)

    @Slot(str)
    def welcomeText(self, name):
        self.setName.emit("Welcome, " + name)

    @Slot(str, str, str, int, int, int, bool)
    def addPrimaryData(self, firstName, lastName, otherName, Cyear, Cmonth, Cday, isMale):
        db = mysql.connector.connect(
               host = "localhost",
               user = "root",
               passwd = "",
               database = "loan_system"
           )
        mycursor = db.cursor(buffered =True)

        #newdate = datetime(year = int(Cyear), month = Cmonth, day = Cday)
        #print(newdate)

        sex = 'M'
        mycursor.execute("SELECT MAX(cus_ID) FROM customer_primary")
        values = mycursor.fetchone()
        for x in values:
            cusID = x +1
        if isMale == True:
            sex = 'M'
        else:
            sex = 'M'

        dateJoined = datetime.datetime.now()
        dateJoined = dateJoined.strftime("%Y/%m/%d")

        mycursor.execute("INSERT INTO customer_Primary(first_name, last_name, other_name, cus_ID, sex, date_joined) VALUES(%s, %s, %s, %s, %s, %s)", (firstName, lastName, otherName, cusID, sex,dateJoined ))
        db.commit()

    @Slot(int, int, int, str, str, str, str)
    def addContact(self, customerID, contact1, contact2, secondaryContact, email, postal_Address, residential_address):
        db = mysql.connector.connect(
               host = "localhost",
               user = "root",
               passwd = "",
               database = "loan_system"
           )
        mycursor = db.cursor(buffered =True)

        mycursor.execute("SELECT MAX(cus_ID) FROM customer_primary")
        values = mycursor.fetchone()
        for x in values:
            customerID = x + 1
        mycursor.execute("INSERT INTO customer_contact(customer_Id, contact1, contact2, secondary_contact, email, postal_Address, residential_address) VALUES(%s, %s, %s, %s, %s, %s, %s)", (customerID, contact1, contact2, secondaryContact, email, postal_Address, residential_address))
        db.commit()

    @Slot(int, str, str, str, int, int)
    def addEmpData (self, customer_ID, occupation, employer, highest_education, ssn, tin):
        db = mysql.connector.connect(
            host = "localhost",
            user = "root",
            passwd = "",
            database = "loan_system"
            )
        mycursor = db.cursor(buffered =True)

        mycursor.execute("SELECT MAX(cus_ID) FROM customer_primary")
        values = mycursor.fetchone()
        for x in values:
            customer_ID = x + 1
        mycursor.execute("INSERT INTO customer_emp_details VALUES(%s, %s, %s, %s, %s, %s)", (customer_ID, occupation, employer, highest_education, ssn, tin))
        db.commit()

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    #Get Context
    main = MainWindow()
    engine.rootContext().setContextProperty("backend", main)
    engine.load(os.path.join(os.path.dirname(__file__), "qml/splash.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
