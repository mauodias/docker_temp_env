FROM alpine
RUN adduser -D alpine
RUN echo "alpine:password" | chpasswd
RUN apk add openrc openssh
RUN openrc
RUN touch /run/openrc/softlevel
ENTRYPOINT rc-service sshd start && /bin/ash
