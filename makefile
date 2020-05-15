all: README.md

README.md:
	touch README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench - Guessing Game Assignment" > README.md
	echo "### About Guessing Game" >> README.md
	echo "Create a program called guessinggame.sh that behaves as follows:"  >> README.md
	echo "- When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess." >> README.md
	echo "- If the user's guess is correct then they should be congratulated and the program should end." >> README.md
	echo "- The program should not end until the user has entered the correct number of files in the current directory." >> README.md
	echo "- The program should be able to be run by entering bash guessinggame.sh into the console." >> README.md
	echo "- The program should contain at least one function, one loop, and one if statement." >> README.md
	echo "- The program should be more than 20 lines of code but less than 50 lines of code." >> README.md
	echo "  \n" >> README.md
	echo "### About the Makefile" >> README.md
	echo "Makefile is created on: " $$(date) >> README.md
	echo "There are" $$(cat guessinggame.sh | wc -l) "lines of code in guessinggame.sh" >> README.md
	echo "  \n" >> README.md

clean:
	rm README.md
