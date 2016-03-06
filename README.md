[![Docker Stars](https://img.shields.io/docker/stars/safelinkinternet/unbound.svg)](https://hub.docker.com/r/safelinkinternet/unbound/) [![Docker Pulls](https://img.shields.io/docker/pulls/safelinkinternet/unbound.svg)](https://hub.docker.com/r/safelinkinternet/unbound/)
# Unbound on Alpine
Total size of this image is:
[![](https://badge.imagelayers.io/safelinkinternet/unbound:latest.svg)](https://imagelayers.io/?images=safelinkinternet/unbound:latest 'Get your own badge on imagelayers.io')

### Running

Use this command to start the container. Unbound will listen on port 53/udp.

`docker run --name unbound -d -p 53:53/udp -p 53:53 safelinkinternet/unbound`

(optional)
If you want to override the nameserver in the unbound container, you can use:

`docker run --name unbound -d -p 53:53/udp -p 53:53 --dns="127.0.0.1" safelinkinternet/unbound`

________________________________________

### Configuration
**Parameters:**

* `-e DO_IPV6` Enable or disable ipv6. (Default: "yes", Possible Values: "yes, no")
* `-e DO_IPV4` Enable or disable ipv4. (Default: "yes", Possible Values: "yes, no")
* `-e DO_UDP` Enable or disable udp. (Default: "yes", Possible Values: "yes, no")
* `-e DO_TCP` Enable or disable tcp. (Default: "yes", Possible Values: "yes, no")
* `-e VERBOSITY` Verbosity number, 0 is least verbose. (Default: "0", Possible Values: "<integer>")
* `-e SO_RCVBUFF` Buffer size for UDP port 53 incoming. (Default: "0", Possible Values: "<integer>")
* `-e SO_SNDBUF` Buffer size for UDP port 53 outgoing. (Default: "0", Possible Values: "<integer>")
* `-e SO_REUSEPORT` Use SO_REUSEPORT to distribute queries over threads. (Default: "no", Possible Values: "yes, no")
* `-e EDNS_BUFFER_SIZE` EDNS reassembly buffer to advertise to UDP peers. (Default: "4096", Possible Values: "<integer>")
* `-e MSG_CACHE_SIZE` The amount of memory to use for the message cache. Plain value in bytes or you can append k, m or G. (Default: "4m", Possible Values: "<integer>")
* `-e RRSET_CACHE_SIZE` The amount of memory to use for the RRset cache. Plain value in bytes or you can append k, m or G. (Default: "4m", Possible Values: "<integer>")
* `-e CACHE_MIN_TTL` The time to live (TTL) value lower bound, in seconds. (Default: "0", Possible Values: "<integer>")
* `-e CACHE_MAX_TTL` The time to live (TTL) value cap for RRsets and messages in the cache. Items are not cached for longer. In seconds. (Default: "86400", Possible Values: "<integer>")
* `-e CACHE_MAX_NEGATIVE_TTL` The time to live (TTL) value cap for negative responses in the cache. (Default: "3600", Possible Values: "<integer>")
* `-e HIDE_IDENTITY` Enable to not answer id.server and hostname.bind queries. (Default: "no", Possible Values: "yes, no")
* `-e HIDE_VERSION` Enable to not answer version.server and version.bind queries. (Default: "no", Possible Values: "yes, no")
