all:
	cd picotls; \
	patch -p 1 -N < ../tls13_only.patch; \
	cmake ${CMAKE_OPTS} .; \
	make; \
	cd ..; \
	CGO_LDFLAGS_ALLOW=\(.*picotls.*\)\|\(.*libssl.*\)\|\(.*libcrypto.*\) go build -n .
	CGO_LDFLAGS_ALLOW=\(.*picotls.*\)\|\(.*libssl.*\)\|\(.*libcrypto.*\) go build .
