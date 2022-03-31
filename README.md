# Convert CSV file exported from Credit Agricole Bank Polska to YNAB format

Convert CSV file exported from Credit Agricole Bank Polska to YNAB format.

Output format is:
```
"Date","Payee","Memo","Amount"
"2016-01-01","Grocery Store","Import Memo","$13.37"
```

To convert input CSV to UTF-8 and to YNAB format:
```
iconv -f WINDOWS-1250 -t UTF8 input.csv | ./convert.awk > output.csv
```
