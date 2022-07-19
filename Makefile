.PHONY: *

# Update when a new folder is added
all: city-council

deploy:
	rsync -rv --exclude-from=.rsync-exclude ./ tris.fyi:/var/www/gov/

%:
	$(MAKE) -C city-council
