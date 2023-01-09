FROM golang:stretch

WORKDIR $GOPATH/src/github.com/yoyoqz/webrtc-sfu

COPY go.mod go.sum ./
RUN cd $GOPATH/src/github.com/yoyoqz/webrtc-sfu && go mod download

COPY sfu/ $GOPATH/src/github.com/yoyoqz/webrtc-sfu/pkg
COPY cmd/ $GOPATH/src/github.com/yoyoqz/webrtc-sfu/cmd
COPY config.toml $GOPATH/src/github.com/yoyoqz/webrtc-sfu/config.toml
