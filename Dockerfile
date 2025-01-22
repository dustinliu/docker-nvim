FROM alpine
RUN apk update && \
    apk add --no-cache bash zsh git curl wget \
    neovim ncurses-terminfo grep \
    stow ripgrep fd fzf tree-sitter-cli \
    build-base unzip gzip nodejs
