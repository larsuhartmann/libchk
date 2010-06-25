all: chklib

chklib: *.sh
	cat ${.ALLSRC:O} >chklib
	chmod +x chklib

clean:
	@rm -f *~ \#*\# chklib

.PHONY: all clean
