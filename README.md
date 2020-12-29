# VSCode container

I don't want to install bunch of software in my local machine. Launch `make run` and then,

```bash
# inside the container
chown devel:devel /tmp/.X11-unix/X0
su devel

# then you may launch
code .
# or
google-chrome &
```
