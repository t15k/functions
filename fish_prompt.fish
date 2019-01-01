function fish_prompt --description "write the prompt"
  # Values
  set -l Date (date "+%H:%M")
  set -l Prompt (basename (pwd))
  set -l GitBranch (git branch ^/dev/null | sed -n '/\* /s///p')
  # Colors
  set -l BaseColor 222
  set -l PathColor 007
  set -l BranchColor 0D0
  set_color -b $BaseColor

  printf "$Date"
  echo -n [aws:$AWS_ACCESSKEY_ID]
  set_color -b $PathColor
  echo -n " $Prompt"
  #set_color -b 070
  if [ "" != "$GitBranch" ]
    set_color $BranchColor
    echo -n "#$GitBranch"
    #set_color -b 070
  end
  set_color -b normal
  # \u25B6 
  printf "\uFF1E"
  #echo '->\u25B6'
end

