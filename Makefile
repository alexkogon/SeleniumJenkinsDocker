AUTHOR=alko
NAME=seleniumjenkins
VERSION=latest

.PHONY: docker win7




docker:
	docker build --no-cache=false  -t $(AUTHOR)/$(NAME):$(VERSION) .

bash:
	docker run -ti -P $(AUTHOR)/$(NAME):$(VERSION) /bin/bash

magic:
	docker run -ti -p 8080:8080 -p 50000:50000 -v /vol/jenkins:/var/jenkins_home -u jenkins -P $(AUTHOR)/$(NAME):$(VERSION)

default: magic
