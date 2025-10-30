SHELL = bash
.ONESHELL:

all: nash.html index.html

nash.html:
	@m4 <<- 'EOF' > $@
		changequote({{{,}}})
		define(_NASH_TITLE, Nash : Note as HTML)
		define(_NASH_BODY, <p></p>)
		include(src/nash.m4)
	EOF

index.html:
	@m4 <<- 'EOF' > $@
		changequote({{{,}}})
		define(_NASH_TITLE, {{{👋 Hello, This is Nash}}})
		define(_NASH_BODY, {{{include(src/hello.html)}}})
		include(src/nash.m4)
	EOF

