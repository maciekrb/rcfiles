all: install copy

hostinstall: 

	sudo apt update
	sudo apt install --yes --no-install-recommends \
		curl \
		git-core \
		htop \
		tmux \
		tree \
		unzip \
		vim \
		vifm 

	curl -SL https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo apt-key add -
	echo "deb https://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" \
		| sudo tee /etc/apt/sources.list.d/virtualbox.list
	sudo apt update
	sudo apt-get install virtualbox-6.0

vminstall:

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
