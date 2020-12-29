run:
	podman build -f ContainerFile-vscode.dockerfile -t vscode .

	xhost +local:

	podman run -it --rm \
		-e DISPLAY \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		-v /dev/dri:/dev/dri \
		-v $(CURDIR):/home/devel/shared \
		--ipc=host \
		vscode

