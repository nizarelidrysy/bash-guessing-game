cat << 'EOF' > makefile
README.md: guessinggame.sh
	# 1. Clear and start the README.md file
	echo "" > README.md
	
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" >> README.md
	
	echo "\n## Date and Time of make Execution" >> README.md
	date >> README.md
	
	echo "\n## Lines of Code in guessinggame.sh" >> README.md
	wc -l guessinggame.sh | awk '{print $$1}' >> README.md

EOF
