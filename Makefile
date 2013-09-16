# Just install the scripts in my home directory...

DESTDIR = $(HOME)/bin
SOURCE  =  checkkey.sh dmpc.sh doccount.sh ipconnect.sh scrlevel.sh viewdoc.sh volinfo.sh weather.sh websites.sh word.sh xkcdget.sh xkcd.sh
OBJECTS =  checkkey dmpc doccount ipconnect scrlevel viewdoc volinfo weather websites word xkcdget xkcd

install: $(OBJECTS)

% : %.sh
	@echo -e "Installing $@..."
	@install -Dm755 $? $(DESTDIR)/$@
