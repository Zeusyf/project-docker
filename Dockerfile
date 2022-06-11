FROM debian:buster-slim
USER root
RUN cd /root && \
apt update && \
apt full-upgrade -y && \
apt install wget libglib2.0-0 netbase -y && \
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb && \
dpkg -i /root/uam-latest_amd64.deb
CMD uam --pk E8B8118BDD82954C27A56D31FEAFDA455E123EB4DC8F4299C2CA0E7ADB5CC03F --no-ui
