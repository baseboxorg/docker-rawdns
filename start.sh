#!/bin/bash
docker rm dns > /dev/null 2>&1
docker run -d --name dns -p 53:53/udp -v /var/run/docker.sock:/var/run/docker.sock jacoelho/rawdns
