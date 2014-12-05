docker rawdns
-------------

for more information check:
  https://registry.hub.docker.com/u/tianon/rawdns/

 - dev zone preconfigured: it will return IP from container names in <container_name>.dev

starting this container:
```docker run -d --name dns -p 53:53/udp -v /var/run/docker.sock:/var/run/docker.sock jacoelho/rawdns```

If you are using boot2docker is possible to use this dns by routing the packets:

```BOOT2DOCKER_IP=$(boot2docker ip 2> /dev/null)
BOOT2DOCKER_NETWORK=$(boot2docker ssh ip route show 2> /dev/null | awk '/docker0/{print $1}')
BOOT2DOCKER_STATUS=$(boot2docker status)

if [[ 'running' != $BOOT2DOCKER_STATUS ]]; then
    echo "boot2docker not running"
      exit 1
      fi

      sudo route -n add "${BOOT2DOCKER_NETWORK}" "${BOOT2DOCKER_IP}"
```


