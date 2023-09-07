function eza_git -d "Use eza and its git options if in a git repo"
    if git rev-parse --is-inside-work-tree &>/dev/null
        exa $EZA_STANDARD_OPTIONS {$EZA_LL_OPTIONS} --git $argv
    else
        exa $EZA_STANDARD_OPTIONS {$EZA_LL_OPTIONS} $argv
    end
end
