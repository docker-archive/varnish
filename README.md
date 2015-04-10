# tutum-docker-varnish

Base image to run a Varnish server

## Usage

If your content server is using port 80 and you want to run it with the default rules:

	docker run -d --name backend tutum/hello-world
	docker run -d --link backend -p 80:80 tutum/varnish

Go to `http://localhost/` and you will get a superfast cached version of a hello world!

If your content server is using a port different than 80 (i.e. 8080) and you want to run it with the default rules:

	docker run -d --link backend -e BACKEND_PORT=8080 -p 80:80 tutum/varnish

If you want to use your own custom VCL file:

	docker run -d -e CONTENT="-f /etc/varnish/default.vcl" -v $PWD/default.vcl:/etc/varnish/default.vcl -p 80:80 tutum/varnish


## Tags available

* `tutum/varnish:3.0` for latest 3.0.x release
* `tutum/varnish:4.0` for latest 4.0.x release

