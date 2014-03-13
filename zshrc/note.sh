function note()
{
    file_dir="/Users/sumitasok/Dropbox/Sumit\'s/notes"
    todays_file="`date +'%Y.%m.%d.md'`"
    output_file="$file_dir/$todays_file"
    content="`date +'%b %d, %Y - %I:%M %p'` \n\n> $1 \n\n<meta: <date=`date +'%Y-%m-%d %r'`\n\n> ---\n\n"
    cat $content >> $filename
}
