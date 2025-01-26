if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <logfile> <ip>"
	exit 1
fi

LOG_FILE=$1
IP=$2

cat "$LOG_FILE" | awk -F'"' '{print $8}' | sort | uniq -c | sort -nr | head -n "$IP"