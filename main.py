import csv
from peewee import *


db = PostgresqlDatabase(database='db_test', user='postgres', password='1', host='localhost')     # connector orm with db 


class Finance(Model):
    symbol = CharField()    # class fields
    price = CharField()
    url = TextField()

    class Meta:    # connect with db
        database = db



def main():

    db.connect()    # connect to database
    db.create_tables([Finance])    # create shreadsheet in database

    with open('finance_yahoo.csv') as f:
        order = ['symbol', 'price', 'url']
        read = csv.DictReader(f, fieldnames=order)    # get dictionares 

        data = list(read)    # dictreader to list type

        for i in data:
            print(i)



if __name__ == '__main__':
    main()