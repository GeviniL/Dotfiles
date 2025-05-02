# Save this as ~/.config/fish/completions/zathura.fish

function __fish_zathura_needs_command
    set cmd (commandline -opc)
    if [ (count $cmd) -eq 1 -a $cmd[1] = 'zathura' ]
        return 0
    end
    return 1
end

function __fish_zathura_using_command
    set cmd (commandline -opc)
    if [ (count $cmd) -gt 1 ]
        if [ $argv[1] = $cmd[2] ]
            return 0
        end
    end
    return 1
end

complete -f -c zathura -n '__fish_zathura_needs_command' -a '(__fish_complete_suffix .pdf)'
complete -f -c zathura -n '__fish_zathura_needs_command' -a '(__fish_complete_suffix .djvu)'
complete -f -c zathura -n '__fish_zathura_needs_command' -a '(__fish_complete_suffix .ps)'
complete -f -c zathura -n '__fish_zathura_needs_command' -a '(__fish_complete_suffix .epub)'

complete -c zathura -s p -l pages -d 'Open the document at the given page' -x
complete -c zathura -s P -l password -d 'The password to unlock the document' -x
complete -c zathura -s f -l find -d 'Open the document and search for the given term' -x
complete -c zathura -l fork -d 'Fork into background'
complete -c zathura -l version -d 'Show version information'
complete -c zathura -s h -l help -d 'Show help message and exit'

# Add more options as needed based on Zathura's documentation
