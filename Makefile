all:
	git add -A 
	git commit -m "update"
	rm -rvf ./docs
	rm -rvf ./dist
	npm run build
	mkdir docs
	cp -r ./dist/* ./docs/
	git add -A
	git commit -m "update deploy"
	git push upstream master