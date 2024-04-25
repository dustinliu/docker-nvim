FROM alpine
RUN apk update && \
    apk add --no-cache bash zsh git curl wget \
    neovim ncurses-terminfo grep \
    stow tmux ripgrep fd tree-sitter-cli \
    build-base unzip gzip nodejs
