
build: components bootstrap-responsive.css
	@component build --dev

bootstrap-responsive.css: bootstrap-responsive.less
	node_modules/.bin/recess bootstrap-responsive.less --compile > bootstrap-responsive.css

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean
