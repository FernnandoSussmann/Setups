FROM ubuntu
RUN apt -qq update &&\
    apt -qq install curl -y
RUN apt -qq install vim -y && \
    echo "set number\nset tabstop=4\nset shiftwidth=4\nset expandtab" > /root/.vimrc
RUN apt -qq install tmux -y  && \
    echo "tmux" >> /root/.bashrc
RUN chmod +x /bin/*
WORKDIR /root

VOLUME ./files /root/files

ENTRYPOINT ["bash"]
