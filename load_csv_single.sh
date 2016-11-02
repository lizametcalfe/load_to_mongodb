#!/bin/sh
#mongorestore --host 192.168.2.20:27017
# Specify your source CSV file locations
    COM="/media/mint/e834712c-23da-4cbe-a4ec-3a35d416877b/my-data/supermarket_scraper/output/waitrose/*.csv"

# Specify your (local) MongoDB database and target collection
    COLLECTION="combined"
    DB="prices_db"

# process Tesco files...
    for f in $COM
    do
        mongoimport --host 192.168.2.20:27017 -d $DB -c $COLLECTION --type csv --file "$f" --headerline
    done

