function wn_prompt
    if not command -sq wn
        return 1
    end

    # Run the wn workspace command and capture its output
    set workspace_path (wn workspace)

    # the only thing controlling whether to show the prompt is a single file in
    # my Fish config dir that says "yes" or "no". this might make you tear up.
    # in any case, just have some sort of way to toggle that.
    if [ "$(cat $HOME/.config/fish/wn_prompt_enabled)" != "yes" ]
        return 1
    end

    # Check if the output starts with "/" (indicating success)
    if test (string sub -l 1 $workspace_path) = "/"
        # Extract the parent directory name and workspace name
        set parent_dir (basename (dirname $workspace_path))
        set workspace_name (basename $workspace_path)

        # Truncate the parent directory if its length exceeds 10 characters
        if test (string length $parent_dir) -gt 10
            # Truncate the parent directory (first 7 characters + ellipsis)
            set parent_dir (string sub -s 1 -l 9 $parent_dir)'…'
        end

        # Format the prompt output
        echo "["$parent_dir"/"$workspace_name"]"
    end
end
