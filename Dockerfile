FROM alpine:latest

RUN apk --no-cache upgrade \
 && apk --no-cache add sshpass openssh-client ca-certificates curl python-dev py-pip py-paramiko \
 && pip install --upgrade pip \
 && pip install ansible

ENTRYPOINT ["ansible-playbook"]
