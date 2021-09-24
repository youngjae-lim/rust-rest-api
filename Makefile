local_build:
	docker build -t rust_rest_api_dev -f Dockerfile.dev .

local_run:
	docker run --rm -it -p 8000:8000 \
	--mount type=bind,source="$(shell pwd)",target=/app \
	--name rust_rest_api rust_rest_api_dev \
	cargo watch -x 'run --bin rust-rest-api'

local_stop:
	docker stop rust_rest_api

cut_production_image:
	./cut_build_push_image.sh
