
$(eval CONTAINER_ID := $(shell podman ps -a | grep vscode | awk '{ print $$1 }'))

all:
ifeq ($(CONTAINER_ID),)
	podman build -f centos-vscode.dockerfile -t vscode .
	podman run -it \
		--name vscode \
		-e DISPLAY \
		-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
		--device /dev/dri \
		--device /dev/snd \
		--ipc=host \
		--userns keep-id \
		--security-opt seccomp=unconfined \
		vscode
else
	podman start -ia $(CONTAINER_ID)
endif
