# Desktop-Docker-Container
A Docker container with Mate and VNC installed.

## Build
<code>docker build . -t desktop-docker-container</code>

## Run
<code>docker run --rm -ti -p 5900:5900 desktop-docker-container</code>