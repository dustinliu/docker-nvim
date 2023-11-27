FROM alpine
RUN apk update && \
    apk add --no-cache bash zsh git curl wget neovim ncurses grep \
                       openssh-client
RUN adduser -h /home/nvim -s /bin/zsh -D nvim nvim
