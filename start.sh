docker build . -t obs-studio
docker run --rm --name obs -e DISPLAY=192.168.2.2:0.0 -v ./settings:/root/.config/obs-studio obs-studio