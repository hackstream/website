build-dev-docker:
	docker build --target builder -t hackstream/website:latest .

run-dev-docker:
	docker run -v "$(shell pwd)":/public \
			    -w /public \
			    -p 1313:1313 \
			    hackstream/website:latest \
			    hugo serve -D --bind 0.0.0.0

build-public-folder-docker:
	docker run -v "$(shell pwd)":/public \
			-w /public \
			-p 1313:1313 \
			hackstream/website:latest \
			hugo
