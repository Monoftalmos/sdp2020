#Run and kill tcp server on target

TARGET_IP=192.168.56.123

ssh -t $TARGET_IP "top -n 1 | tee topresult.txt ; nc -l -p 4321 ; nmap -sT -p- localhost ; pkill nc ; nmap -sT -p- localhost"