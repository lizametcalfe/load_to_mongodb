#!/bin/sh

# Specify your source CSV file locations
    TESCO="/media/mint/e834712c-23da-4cbe-a4ec-3a35d416877b/my-data/supermarket_scraper/output/tesco/*.csv"
    SAINSBURY="/media/mint/e834712c-23da-4cbe-a4ec-3a35d416877b/my-data/supermarket_scraper/output/sainsbury/*.csv"
    WAITROSE="/media/mint/e834712c-23da-4cbe-a4ec-3a35d416877b/my-data/supermarket_scraper/output/waitrose/*.csv"

# Specify your (local) MongoDB database and target collection
    COLLECTION="combined"
    DB="prices_db"

# process Tesco files...
    for f in $TESCO
    do
        mongoimport --host 192.168.2.20:27017 -d $DB -c $COLLECTION --type csv --file "$f" --headerline
    done
# process Sainsbury files...
    for f in $SAINSBURY
    do
        mongoimport --host 192.168.2.20:27017 -d $DB -c $COLLECTION --type csv --file "$f" --headerline
    done
# process Waitrose files...
    for f in $WAITROSE
    do
        mongoimport --host 192.168.2.20:27017 -d $DB -c $COLLECTION --type csv --file "$f" --headerline
    done

#!/bin/sh

mv /media/mint/e834712c-23da-4cbe-a4ec-3a35d416877b/my-data/supermarket_scraper/output/tesco/* /media/mint/e834712c-23da-4cbe-a4ec-3a35d416877b/my-data/supermarket_scraper/output/tesco_backup/
mv /media/mint/e834712c-23da-4cbe-a4ec-3a35d416877b/my-data/supermarket_scraper/output/sainsbury/* /media/mint/e834712c-23da-4cbe-a4ec-3a35d416877b/my-data/supermarket_scraper/output/sainsbury_backup/
mv /media/mint/e834712c-23da-4cbe-a4ec-3a35d416877b/my-data/supermarket_scraper/output/waitrose/* /media/mint/e834712c-23da-4cbe-a4ec-3a35d416877b/my-data/supermarket_scraper/output/waitrose_backup/

