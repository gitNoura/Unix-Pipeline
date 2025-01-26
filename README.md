# 🌐 Unix Pipeline for Nginx Log Analysis  
## 🚀 Overview  
This project focuses on analyzing Nginx access logs using a Unix shell pipeline. By leveraging Unix commands, we extract meaningful insights about the most visited pages and frequent visitors on a website.  

## 🔍 Introduction  
The project delves into analyzing Nginx access logs to gain insights into user behavior and identify popular content. We created a **Unix shell pipeline** to process data efficiently, minimizing intermediate file usage.  
### Key Features:  
- Extracted and analyzed **top 10 most visited pages**.  
- Identified **top 10 frequent visitors using IP addresses**.  

## ⚙️ Methodology  
The pipeline was crafted with the following Unix commands:  
1. **`cat "$LOG_FILE"`** - Reads the raw log data as input.  
2. **`awk -F' ' '{print $10}'`** - Extracts the 10th field (requested page).  
3. **`sort`** - Sorts the extracted pages alphabetically.  
4. **`uniq -c`** - Counts occurrences of each unique page.  
5. **`sort -nr`** - Sorts pages by frequency in descending order.  
6. **`head -n "$PAGES"`** - Extracts the top N pages based on user input.  

This pipeline transforms raw log data into actionable insights efficiently without intermediate file storage.  

For further detailed implementation, check the attached [report](Report.pdf). 

## 📊 Results  
### Top 3 Most Popular Pages  
Since the sample file contained only 3 distinct pages, here are the results:  
1. `/downloads/product_1`  
2. `/downloads/product_2`  
3. `/downloads/product_3`  

### Top 10 Most Frequent Visitors (By IP)  
The log analysis revealed the most active users by IP addresses. This provides insight into repeat visitors and potential user groups.  
  


