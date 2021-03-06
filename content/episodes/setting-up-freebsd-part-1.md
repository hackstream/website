+++
categories = ["Hugo"]
date = "2020-05-31"
description = "Tinkering with DNSCrypt and Unbound on FreeBSD"
featured = "pic01.jpg"
featuredalt = ""
featuredpath = "date"
linktitle = ""
title = "Setting up DNSCrypt server on FreeBSD Jails"
slug = "freebsd-dnscrypt-part-1"
type = "post"
+++

## Introduction

In this episode, we will learn how to setup a FreeBSD 12.1 server in DigitalOcean. We want to play around with FreeBSD stack because we want to get out of our "Linux" comfort zone.

We used Terraform to [create](https://github.com/hackstream/freebsd-droplet) a FreeBSD droplet. We are going to run a public facing DNSCrypt server upstreaming to Unbound. We will explore how to configure and run applications with FreeBSD Jail and set all of it from scratch using iocage.

### Tasks

This is going to be a multi part series. The following task list will be updated as and when we record more parts.

- [X] Create a Droplet with base image FreeBSD 12.1 with ZFS
- [X] Sytem Settings
	- [x] Configure sysctl configs
	- [x] Date and Locale
	- [x] SSH config
	- [x] Install iocage
- [x] Read up on Jail
- [x] Configure a Jail application with iocage
- [x] Setup Unbound
	- [x] Test config with `drill`
- [ ] Setup DNSCrypt
	- [ ] Test config with `dnscrypt-proxy`
- [ ] Make it public and share stamp with people


Watch the part 1 [here](https://www.youtube.com/watch?v=goO4ejmGGuM0).

[![freebsd-dnscrypt-part-1](https://img.youtube.com/vi/goO4ejmGGuM/0.jpg)](https://www.youtube.com/watch?v=goO4ejmGGuM)
