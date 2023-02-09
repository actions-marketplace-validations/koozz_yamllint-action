FROM python:3.11.2-alpine
RUN apk add --update --no-cache ca-certificates git
RUN pip install yamllint
USER 1000
WORKDIR /src
ENTRYPOINT ["yamllint",".","-f","github"]
