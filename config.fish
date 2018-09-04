if test -e /usr/local/Caskroom/google-cloud-sdk
    set PATH /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin/ $PATH
end

set fish_greeting ""
# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡️ '
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '⟳ ' 
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
 
function fish_prompt
        set last_status $status
        set_color $fish_color_cwd
        printf '%s' $USER:(prompt_pwd)
        set_color normal
        printf '%s ' (__fish_git_prompt )
        set_color normal
end
