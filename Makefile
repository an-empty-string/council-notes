.PHONY: *

# Update when a new folder is added
deploy:
	rsync -rv --exclude-from=.rsync-exclude ./ trisfyi:/var/www/gov/

all:
	$(MAKE) -C city-council
	$(MAKE) -C planning
