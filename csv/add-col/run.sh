# awk '{print $0,NR==1?" MonthYear":substr($2,0,index($2,"/"))substr($2,length($2)-1)}' test.csv


awk '{gsub(/r/,"")}; NR==1 {print $0, "MonthYear"};NR>1 {print $0,$2"/"$4}' test.csv