function fish_prompt
  # Values
  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b 333 blue) "(" (basename "$VIRTUAL_ENV") ") " (set_color normal)
  end
#  set -l Date (date "+%H:%M")
  set -l Prompt (basename (pwd))
  set -l GitBranch (git branch ^/dev/null | sed -n '/\* /s///p')

  # Colors
  set -l BaseColor 222
  set -l PathColor 007
  set -l BranchColor 0D0

  set_color -b $BaseColor
  printf "$Date"
#  printf " ["
#  if [ "" != "$AWS_ACCESS_KEY_ID" ]
##    set_color e47911
 #   printf "+aws"
 #   set_color normal
 # end
 # printf "] "
  #set_color -b $PathColor
  echo -n -s (set_color -b 333 brgreen) (basename (pwd))
  #"$Prompt"
  #set_color -b 070
  if [ "" != "$GitBranch" ]
    #set_color $BranchColor
    echo -n -s (set_color -b 444 yellow) '#' $GitBranch (set_color normal)
    #echo -n "#$GitBranch"
    #set_color -b 070
  end
  set_color -b normal
  # \u25B6 
  printf "\uFF1E"
  #echo '->\u25B6'
end

