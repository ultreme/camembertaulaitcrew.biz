.PHONY: release
release:
	git checkout -B gh-pages
	echo v2.camembertaulaitcrew.biz > build/CNAME
	git add -f build
	git commit -am "Rebuild website"
	git push origin :gh-pages
	git subtree push --prefix build origin gh-pages
	git checkout -
