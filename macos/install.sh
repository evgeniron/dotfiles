if [ "$(uname)" == "Darwin" ]
then
	echo "› macos softwareupdate"
	sudo softwareupdate -i -a
	macos/defaults.sh
fi
