all: install copy

install:
	sudo apt update
	sudo apt install --yes --no-install-recommends \
		curl \
		git-core \
		htop \
		tree \
		unzip \
		vim \
		vifm \
		zsh
	sudo chsh -s `which zsh`
	sudo usermod -s /usr/local/zsh ${USER}

copy:
	ln -s ~/.rcfiles/.tmux.conf ~
