import csv


def main():
    with open('finance_yahoo.csv') as f:
        order = ['symbol', 'price', 'url']
        read = csv.DictReader(f, fieldnames=order)

        for i in read:
            print(i)



if __name__ == '__main__':
    main()