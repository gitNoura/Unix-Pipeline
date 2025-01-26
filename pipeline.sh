if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <logfile> <pages>"
	exit 1
fi

LOG_FILE=$1
PAGES=$2

cat "$LOG_FILE" | awk -F' ' '{print $10}' | sort | uniq -c | sort -nr | head -n "$PAGES"