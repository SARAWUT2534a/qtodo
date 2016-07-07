#############################################################################
# Makefile for building: qtodo
# Generated by qmake (1.07a) (Qt 3.3.8b) on: Thu Jul  7 10:07:28 2016
# Project:  qtodo.pro
# Template: subdirs
# Command: $(QMAKE) -o Makefile qtodo.pro
#############################################################################

MAKEFILE =	Makefile
QMAKE    =	qmake
DEL_FILE =    rm -f
CHK_DIR_EXISTS= test -d
MKDIR    = mkdir -p
INSTALL_FILE= 
INSTALL_DIR = 
SUBTARGETS =	 \
		sub-src

first: all

all: Makefile $(SUBTARGETS)

src/$(MAKEFILE): 
	@$(CHK_DIR_EXISTS) "src" || $(MKDIR) "src"
	cd src && $(QMAKE) src.pro -o $(MAKEFILE)
sub-src: src/$(MAKEFILE) FORCE
	cd src && $(MAKE) -f $(MAKEFILE)

Makefile: qtodo.pro  /usr/lib64/qt-3.3/mkspecs/default/qmake.conf 
	$(QMAKE) -o Makefile qtodo.pro
qmake: qmake_all
	@$(QMAKE) -o Makefile qtodo.pro

all: $(SUBTARGETS)
qmake_all: src/$(MAKEFILE)
	 ( [ -d src ] && cd src ; grep "^qmake_all:" $(MAKEFILE) && $(MAKE) -f $(MAKEFILE) qmake_all; ) || true
clean uicables mocables uiclean mocclean lexclean yaccclean : qmake_all FORCE
	 ( [ -d src ] && cd src ; $(MAKE) -f $(MAKEFILE) $@; ) || true
uninstall_subdirs: qmake_all FORCE
	 ( [ -d src ] && cd src ; $(MAKE) -f $(MAKEFILE) uninstall; ) || true
install_subdirs: qmake_all FORCE
	 ( [ -d src ] && cd src ; $(MAKE) -f $(MAKEFILE) install; ) || true
distclean: qmake_all FORCE
	 ( [ -d src ] && cd src ; $(MAKE) -f $(MAKEFILE) $@; $(DEL_FILE) $(MAKEFILE); ) || true

install:  install_subdirs

uninstall:  uninstall_subdirs

FORCE:
