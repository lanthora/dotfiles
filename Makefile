all: git vim zsh

git:
	ln -s $(PWD)/gitconfig $(HOME)/.gitconfig

vim:
	ln -s $(PWD)/vimrc $(HOME)/.vimrc

zsh:
	ln -s $(PWD)/zshrc $(HOME)/.zshrc

