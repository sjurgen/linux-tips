for i in $(ps -eo pid,pmem,pcpu| sort -k 3 -r|grep -v PID|head -10|awk '{print $1}');do diff -yw <(pidstat -p $i|grep -v Linux) <(ps -o euser,pri,psr,pmem,stat -p $i|tail);done
