#!/usr/bin/awk -f

# Converts 31.12.2022 to 2022-12-31
function dateToIso(date){
    day = substr(date,1,2)
    month = substr(date,4,2)
    year = substr(date,7,4)
    return year"-"month"-"day
}

# Wraps text in "
function quote(str){
    return "\""str"\""
}


BEGIN {
    FS = ";"
    print "\"Date\",\"Payee\",\"Memo\",\"Amount\""
}
{
    TransactionDate = dateToIso($70)
    Payee = $11$24
    Memo = $18
    Amount = $82

    # gsub("a", "_", Memo)

    print quote(TransactionDate)","quote(Payee)","quote(Memo)","quote(Amount)
}
