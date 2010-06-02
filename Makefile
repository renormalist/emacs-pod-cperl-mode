VERSION = `egrep '^;+ Version:' pod-cperl-mode.el | cut -d: -f2 | sed 's/ //g'`
DISTBASE = emacs-pod-cperl-mode
DISTNAME = $(DISTBASE)-$(VERSION)

all:
	@echo Nothing to do. Try make dist.

meta:
	@V=$(VERSION) ; echo VERSION: $$V
	@V=$(VERSION) perl -pni -e 's/^(    |)version: \d+\.\d+/$$1version: $$ENV{V}/' META.yml
	@perl cpanmeta.pl

dist: meta
	@mkdir -p $(DISTNAME)
	@cp pod-cperl-mode.el README ChangeLog META.yml META.json $(DISTNAME)/
	@tar czf $(DISTNAME).tgz $(DISTNAME)
	@/bin/rm -fr $(DISTNAME)

clean:
	/bin/rm -f $(DISTBASE)-?.*.tgz
