# Practice It SQL Joins
This is the repository for the LinkedIn Learning course `course-name`. The full course is available from [LinkedIn Learning][lil-course-url].

![course-name-alt-text][lil-thumbnail-url] 

_See the readme file in the main branch for updated instructions and information._


## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `main` branch holds the final state of the code when in the course.

When switching from one exercise files branch to the next after making changes to the files, you may get a message like this:

    error: Your local changes to the following files would be overwritten by checkout:        [files]
    Please commit your changes or stash them before you switch branches.
    Aborting

To resolve this issue:
	
    Add changes to git using this command: git add .
	Commit changes using this command: git commit -m "some message"

## Installing
1. To use these exercise files, you must have the following installed:
	- The following VS Code extensions are used in this course and are helpful with viewing SQL results and PDFs.
        * SQLiteViewer
        * PDFViewer
        * You can install the HTML Preview or Open in Default Browser extensions in VS Code to open your html files to view.
2. Clone this repository into your local machine using the terminal (Mac), CMD (Windows), or a GUI tool like SourceTree.
3. To install the AdventureWorks database, open a new terminal session. Run `create_database.sh` on the command line.

4. If you recieve a "Permission denied" error on running any of your shell scripts (.sh files), run the following command on your file name (ex. create_documentation.sh):
`chmod +x create_documentation.sh`

5. This course outputs files in HTML format in Chapter 1. You can also use .line or .column formats as well if you are not as familiar with HTML. 


[0]: # (Replace these placeholder URLs with actual course URLs)

[lil-course-url]: https://www.linkedin.com/learning/
[lil-thumbnail-url]: http://

