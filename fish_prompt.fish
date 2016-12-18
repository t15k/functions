function fish_prompt
    set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
    echo -n (date "+%H:%M ")
    set_color 777
    echo [(pwd)[-1]]
    set_color normal
    echo -n [aws:$AWS_ACCESS_KEY_ID]
    echo [$git_branch] '>'
end

