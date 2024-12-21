IMAGE := $(REGISTRY)/$(IMAGE_NAME )

.PHONY: build # basic
build:
	podman build -f src/Containerfile -t ghcr.io/guidum/calibreweb:latest


.PHONY: run # basic
run:
	podman run --replace -p 8083:8083  --name calibreweb ghcr.io/guidum/calibreweb:latest  -i 0.0.0.0 -l
