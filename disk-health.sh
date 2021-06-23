hostname

hostname -I

dmidecode -t bios | awk '$1 == "Vendor:" {print "",$1,$2,$3,$4}'

dmidecode -t system | awk '/Serial/' | awk '{ print $2,$3,$4}'

echo "=======================================총 용량===================================="
df -k | awk 'BEGIN { Total_Size=0;} {Total_Size +=$2 } END { printf("Total Size : %5.1f Gb",Total_Size/1024/1024) }'
echo ""

echo "=======================================총 사용량=================================="
df -k | awk 'BEGIN {Total_Used=0;} {Total_Used+=$3} END {printf("Total Used: %5.1f Gb",Total_Used/1024/1024)}'
echo ""

echo "=======================================총 사용량=================================="
df -k | awk 'BEGIN {Total_Avail=0;} {Total_Avail+=$4} END {printf("Total Avail: %5.1f Gb",Total_Avail/1024/1024)}'
echo ""


echo "==================================메모리 전체용량=================================="
free -h | awk '$1 == "Mem:" { print "Total Mem Size:",$2}'


echo "==================================메모리 사용량===================================="
free -h | awk '$1 == "Mem:" { print "Total Mem Use:",$3}'


echo "==================================메모리 가용량===================================="
free -h | awk '$1 == "Mem:" { print "Total Mem Avail:",$4}'
