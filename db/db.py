import mysql.connector

db = mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd = "",
    database = "loan_system"
)

mycursor = db.cursor(buffered= True)

def insert_data2(tablename, coulumn1, coloumn2, value1, value2):
    mycursor.execute("INSERT INTO %s (%s, %s) VALUES(%s,%s)", (tablename,coulumn1, coloumn2,
                                                               value1,value2))
    db.commit()
    mycursor.close()

def insert_data1(tablename, column, value):
    mycursor.execute("INSERT INTO %s (%s) VALUES(%s)", (tablename, column, value))
    db.commit()
    mycursor.close()

def select(tablename, column, value):
    mycursor.execute()

def checkLogin(username, password):
    mycursor.execute("SELECT * FROM officers WHERE email = %s AND password = %s", (username, password))
    rowcount = mycursor.rowcount
    print(rowcount)
    if rowcount == -1:
        print("Login Unsuccessful")

    else:
        print("Login successful!")
    mycursor.close()

checkLogin('richie', 'password12')
