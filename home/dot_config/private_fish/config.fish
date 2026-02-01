if status is-interactive
    # Commands to run in interactive sessions can go here
    # Set default command for autols
    if type -q eza
        set -U autols_cmd eza -a
    else if type -q ls
        set -U autols_cmd ls -a
    end

    # Activate programs if available
    if type -q mise
        mise activate fish | source
    end

    if type -q zoxide
        zoxide init fish | source
    end
end
