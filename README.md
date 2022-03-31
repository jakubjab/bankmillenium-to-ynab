# Convert CSV file exported from Bank Millenium S.A. to YNAB format

Convert CSV file exported from Bank Millenium S.A. to YNAB format.

Output format is:
```
"Date","Payee","Memo","Amount"
"2016-01-01","Grocery Store","Import Memo","$13.37"
```

To convert input CSV to UTF-8 and to YNAB format:
```
sed 's/\xC2\xA0/ /g' < input.csv | ./convert.awk > output.csv
```
