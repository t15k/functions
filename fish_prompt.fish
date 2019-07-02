function fish_prompt
  # Values
  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b 333 blue) (basename "$VIRTUAL_ENV") " " (set_color normal)
  end
  set -l Prompt (basename (pwd))
  set -l GitBranch (git branch ^/dev/null | sed -n '/\* /s///p')

  # Colors
  set -l BaseColor 222
  set -l PathColor 007
  set -l BranchColor yellow

  set_color -b $BaseColor
  echo -n -s (set_color -b 333 green) (basename (pwd))
  if [ "" != "$GitBranch" ]
    echo -n -s (set_color -b 444 $BranchColor) '#' $GitBranch (set_color normal)
  end
  set_color -b normal
  printf "\uFF1E"
end

