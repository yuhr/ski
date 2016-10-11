

DIRINSTALL	= ~/.ski
DIRLINKS		= $(DIRINSTALL)/tricks
DIRDISTS		= $(DIRINSTALL)/resort
DIRREGIS		= $(DIRINSTALL)/boards

install:
	mkdir -p {$(DIRINSTALL),$(DIRLINKS),$(DIRDISTS),$(DIRREGIS)}
	cp -f *.ss $(DIRINSTALL)

uninstall:
	rm -rf $(DIRINSTALL) $(DIRTRICKS) $(DIRDISTS) $(DIRREGIS)

