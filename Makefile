init:
	git submodule init

update:
	# git submodule update --remote --merge
	# git pull --recurse-submodules --remote
	git submodule foreach git pull

check-link:
	find . -name '*.md' -not -path "**/node_modules/*" -exec npx markdown-link-check {} \;

