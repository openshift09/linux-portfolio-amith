#! /bin/bash
echo "Creating test files ..."
touch file1.txt file2.txt

echo "Listing files ..."
ls -l

echo "Copying file1 to newfile...."
cp file1.txt newfile.txt

echo "Moving newfile to folder..."
mkdir testfolder
mv newfile.txt testfolder/

echo "Deleting file2..."
rm file2.txt

echo "Done!"
