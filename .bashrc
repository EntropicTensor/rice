# Add this to your ~/.bashrc or ~/.bash_profile

# Function to show current git branch
git_prompt() {
    if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
        branch=$(git symbolic-ref --short HEAD 2>/dev/null)
        echo "($branch)"
    fi
}

# Set cool prompt with ringed planet emoji
PS1='🪐 \[\e[38;5;226m\]\u\[\e[0m\]@\[\e[38;5;214m\]\h\[\e[0m\] \[\e[38;5;179m\]\w\[\e[0m\] \[\e[38;5;190m\]$(git_prompt)\[\e[0m\]\n \[\e[38;5;208m\]➜ \[\e[0m\]'
fastfetch
