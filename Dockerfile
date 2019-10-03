FROM alpine
RUN apk update && apk add ansible git python3 py3-pip
RUN pip3 install --upgrade paramiko
ENTRYPOINT ["ansible-playbook"]
