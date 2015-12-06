NAME = joonas/base-php

.PHONY: all build

all: build

build:
	docker build -t $(NAME):latest .
