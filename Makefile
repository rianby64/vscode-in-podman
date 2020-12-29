run:
	podman build -f ContainerFile-vscode.dockerfile -t vscode .

	podman run -it --rm \
		-e DISPLAY \
		-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
		-v /dev/dri:/dev/dri \
		--ipc=host \
		--userns keep-id \
		vscode

