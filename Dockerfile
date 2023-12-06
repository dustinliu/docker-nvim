FROM alpine
RUN apk update && \
    apk add --no-cache \
         bash \
         zsh \
         git \
         curl \
         wget \
         neovim \
         ncurses-terminfo \
         grep \
         openssh-client \
         stow \
         tmux \
         ripgrep \
         fd \
         tree-sitter-cli \
         base-build
RUN adduser -h /home/nvim -s /bin/zsh -D nvim nvim
