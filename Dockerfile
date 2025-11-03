FROM --platform=$BUILDPLATFORM quay.io/projectquay/golang:1.24 AS builder
ARG TARGETOS
ARG TARGETARCH
WORKDIR /app
COPY . .
RUN make build TARGETARCH=$TARGETARCH

FROM scratch
WORKDIR /
COPY --from=builder /app .
COPY --from=alpine:latest /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
ENTRYPOINT [""]
