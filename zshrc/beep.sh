# http://www.cyberciti.biz/faq/how-to-read-time-in-shell-script/
function print_done_time()
{
  echo -e "done at ${Yel} `date`"
}

function beep
{
afplay ~/arena/gist/assets/beep-07.wav;
print_done_time
}

function beep_long_process
{
afplay ~/arena/gist/assets/button-7.wav;
print_done_time
}

