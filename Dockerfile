FROM ubuntu
RUN apt -qq update &&\
    apt -qq install curl -y
RUN apt -qq install vim -y && \
    echo "set number\nset tabstop=4\nset shiftwidth=4\nset expandtab" > /root/.vimrc
RUN apt -qq install tmux -y  && \
    echo "tmux" >> /root/.bashrc
RUN chmod +x /bin/*

RUN apt -qq install python3 python3-pip -y 
RUN pip3 install xonsh &&\
    echo "xonsh" >> /root/.bashrc

WORKDIR /root

VOLUME ./files /root/files

ENTRYPOINT ["bash"]
