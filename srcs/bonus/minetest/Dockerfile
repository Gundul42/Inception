FROM	alpine:3.16.0
RUN	apk --update add vim minetest git
RUN	adduser minetest -u 1001 -D 

USER	minetest
RUN	mkdir -p /home/minetest/.minetest/games && \
	git clone https://gitlab.com/blocknerd-games/blockbomber.git \
	/home/minetest/.minetest/games/blockbomber && \
	git clone https://github.com/starninjas/sn_expansion.git \
	/home/minetest/.minetest/games/blockbomber/mods/sn_expansion
COPY	minetest.conf /home/minetest/.minetest/minetest.conf

EXPOSE	30000/udp
CMD	["minetest", "--server"]
