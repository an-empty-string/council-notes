.PHONY: *

# Update when a new folder is added
deploy:
	rsync -rv --exclude-from=.rsync-exclude ./ tris.fyi:/var/www/gov/

all:
	$(MAKE) -C city-council
	$(MAKE) -C planning
