INSTALL_PATH := $(HOME)/.local/bin
BIN := grime

test:
	./test.sh | ./grime

install:
	cp -f $(BIN) $(INSTALL_PATH)/$(BIN)
	chmod +x $(INSTALL_PATH)/$(BIN)

ls:
	ls -al | ./grime

ps:
	ps -A | ./grime

packages:
	pacman -Qe | ./grime
