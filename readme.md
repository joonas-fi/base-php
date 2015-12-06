What
====

This is a lightweight Docker image for hosting PHP apps with Nginx server on Alpine Linux.

Current size of 0.1.0 release is 9 MB. See [Docker hub](https://hub.docker.com/r/joonas/base-php/tags/) for current stats.

What's included?
================

See the Dockerfile to see which PHP modules are installed.

How to use this
===============

In your Dockerfile, use:

	FROM joonas/base-php:0.1.0
	COPY docroot/ /DATA/htdocs

Inspiration
===========

Inspired heavily by [docker-php-nginx](https://github.com/psi-4ward/docker-php-nginx/blob/master/Dockerfile)
