import csv
from peewee import *


db = PostgresqlDatabase(database='db_4', user='postgres', password='1', host='localhost')     # connector orm with db 

class Stock(Model):
    symbol = CharField()    # class fields
    price = CharField()
    url = TextField()

    class Meta:    # connect with db
        database = db


def main():

    db.connect()    # connect to database
    db.create_tables([Stock])    # create shreadsheet in database

    with open('finance_yahoo.csv') as f:
        order = ['symbol', 'price', 'url']
        read = csv.DictReader(f, fieldnames=order)    # get dictionares 

        stocks = list(read)    # dictreader to list type

        # var_1 to write in db   
        # for i in stocks: 
        #     stock = Stock(symbol=i['symbol'], price=i['price'], url=i['url'])
        #     stock.save()

        # var_2, context manager
        # with db.atomic():
        #     for i in stocks:
        #         Stock.create(**i)

        # var_3, context manager
        with db.atomic():
            for i in range(0, len(stocks), 50):
                Stock.insert_many(stocks[i:i+50]).execute()



if __name__ == '__main__':
    main()
