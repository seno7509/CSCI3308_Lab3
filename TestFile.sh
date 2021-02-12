FILE=sample_text.txt
# Author: Sergio Nogueira
# Date: 2/11/2021
# This is my script:

if [ -f "$FILE" ];
then
	echo "$FILE exists."
else
	echo "That file does not exist."
	exit
fi

menu(){
echo "Press 1 for count_lines()"
echo "Press 2 for count_words()"
echo "Press 3 for add_text()"
echo "Press 4 for copy_and_exit()"
}

#Count Lines will count the # of lines in the file.
count_lines(){
lines = 0
lines = cat $FILE | wc -l
echo ("There are $lines lines")

}

menu
count_lines

