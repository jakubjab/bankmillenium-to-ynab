#!/usr/bin/awk -f

# Wraps text in "
function quote(str){
    return "\""str"\""
}

BEGIN {
    FS = "\""
    print "\"Date\",\"Payee\",\"Memo\",\"Amount\""
}

{
    TransactionDate = $4
    Payee = $14
    Memo = $8
    Amount = $16$18

    sub(/\./, ",", Amount)

    if (NR > 1) {
        print quote(TransactionDate)","quote(Payee)","quote(Memo)","quote(Amount)
    }
}
