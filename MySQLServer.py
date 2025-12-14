from dotenv import load_dotenv
import mysql.connector
import os

load_dotenv()
db = mysql.connector.connect(
    host=os.getenv('HOST'),
    user=os.getenv('USER'),
    password=os.getenv('PASSWORD'),
    database=os.getenv('DATABASE')
)

mycursor = db.cursor()

try: 
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

    print("Database 'alx_book_store' created successfully!")
except Exception as e:
    print(e)