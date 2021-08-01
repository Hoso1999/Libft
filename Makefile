include make.mk
.DEFAULT_GOAL := check

check:
	$(MAKE) all || $(MAKE) fclean		

.PHONY: check
