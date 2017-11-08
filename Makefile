fmt:
	shfmt -i 2 -w ./certgen

clean:
	find . -name "*.pem" -maxdepth 1 -delete

.PHONY: fmt clean
