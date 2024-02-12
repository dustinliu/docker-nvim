FROM alpine
RUN apk update && \
    apk add --no-cache bash zsh git curl wget \
    neovim ncurses-terminfo grep openssh-client \
    stow tmux ripgrep fd tree-sitter-cli \
    build-base unzip gzip nodejs
RUN echo 'PasswordAuthentication no' >> /etc/ssh/sshd_config
RUN adduser -h /home/nvim -s /bin/zsh -D nvim nvim
CMD ["/usr/sbin/sshd", "-D", "-e"]
