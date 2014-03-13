arr=$(ps -eo pid,comm | grep bookstoreagent)
sudo kill -9 $(echo "$arr" | awk -F" " '{print $1}')

arr=$(ps -eo pid,comm | grep ScopedBookmarkAgent)
sudo kill -9 $(echo "$arr" | awk -F" " '{print $1}')

arr=$(ps -eo pid,comm | grep Finder)
sudo kill -9 $(echo "$arr" | awk -F" " '{print $1}')
