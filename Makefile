VERSION=$(shell grep "addon id" addon.xml |cut -d '"' -f 4)
NAME=$(shell grep "addon id" addon.xml |cut -d '"' -f 2)

zip:
	git archive --prefix=$(NAME)/ HEAD --format=zip -o $(NAME)-$(VERSION).zip
