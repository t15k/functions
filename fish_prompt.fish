function fish_prompt
  set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
  echo -n [aws:$AWS_ACCESSKEY_ID]
  echo -n (date "+%H:%M")
  set_color 0A0
  echo -n (pwd)
  if [ "" != "$git_branch" ]
    set_color 0C0
    echo -n "#$git_branch"
    set_color 0A0
  end
  set_color 0E0
  echo "->"
end

