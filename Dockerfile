from alpine

RUN apk add --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ \
	kubectl curl bash docker-cli
RUN curl -sL https://raw.githubusercontent.com/crossplane/crossplane/master/install.sh | sh
ENTRYPOINT ["/kubectl-crossplane"]

