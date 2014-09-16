# Just install the scripts in my home directory...

DESTDIR = $(HOME)/bin
OBJECTS =  checkkey cntcmds dbused dmpc doccount docopen docsiz ipconnect scrlevel termcolor transtoggle viewdoc volinfo weather websites word xkcdget xkcd

install: $(OBJECTS)

% : %.sh
	@echo -e "Installing $@..."
	@install -Dm755 $? $(DESTDIR)/$@
