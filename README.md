# CIS117-Homework
Chapters:
-----------
* Chapter 2     - [Done] Michael

* Chapter 3     - [Done] Bronwyn | Michael

* Chapter 5     - [Done] Bronwyn

* Chapter 7     - [Done] Bronwyn | Michael

* Chapter 9     - Damali

* Chapter 10    - Michael

* Chapter 11    - Bronwyn

* Chapter13    - Damali

* Chapter 17    - Michael

* Chapter 18    - Bronwyn

* Chapter 19    - Damali

* Final - Group



Chapter 2
-----------
(30 points) Chapter 2 Pursue (page 73)
Create a new form that takes some input from the user (perhaps base it on a form you know you will need for one of your projects). Then create a PHP script that validates the form data and reports upon the results.
Rewrite handle_form.php (Script 2.4) so that it validates the age element. Hint: Use the $gender validation as a template, this time checking against the corresponding pull-down option values (0-29, 30-60, 60+).



Chapter 3
-----------
(5 points) How do you make the following form elements sticky?
Text input
Select menu 
Radio button 
Check box
Textarea

(5 points) If you have a PHP error caused by code placed within an HTML tag, where must you look to find the error message?

(5 points) What is the difference between include() and include_once()? Which function should you generally avoid using and why?

(15 points) As a more advanced trick, rewrite calculator.php so that the create_ radio() function call is only in the script once, but still creates three radio buttons. Hint: Use a loop.



Chapter 5 SQL
-----------
Chapter 5 Review and Pursue
(5 points) What SQL command is used to make a new database? What command is used to make a new table in a database?

(5 points) What does the asterisk in SELECT * FROM tablename mean? How do you restrict which columns are returned by a query?

(5 points) What SQL command is used to change the values already stored in a table? How do you change multiple columns at once? How do you restrict to which rows the changes are applied?

(15 points) Create, populate, and manipulate your own table of data.



Chapter 7
----------- 
supermarket : (30 points) Create a database called 'supermarket' and create tables namely: customer, invoice, line, product, and vendor. Populate each table with at least 5 rows for every given column. I have ceated the code for the database and tables in the attachment named supermarket.sql. All you need to do is to populate the tables with the necessary values. Use the diagram below as your guide. Use any fictiocious names as long as they are not offensive.



Chapter 9
----------- 
2- Chapter 9 Review & Pursue (p. 298)
(5 points) What PHP code is used to connect to a MySQL server, select the database, and establish the encoding? 

(5 points) Why shouldn’t live sites show MySQL errors and the queries being run? 

(5 points) Why is it important to use the mysqli_ real_escape_string() function? 

(15 points) Apply the mysqli_affected_rows() function to register.php to confirm that the INSERT worked.



Chapter 10
------------
Review and Pursue.
(5 points) What security measures do the delete_ user.php and edit_user.php scripts take to prevent malicious or accidental deletions? 

(5 points) What is the ternary operator? How is it used? 

(5 points) Why is it important not to directly use the value of $_GET['sort'] in a query? 

(15 points) Paginate another query result, such as a list of accounts or customers found in the banking database. 

OR

(15 points) Modify edit_user.php so that you can also change a user’s password. 



Chapter 11 Review and Pursue (p.366)
--------------------------------------
(5 points) What function is used to send email? What are the function’s arguments? What does the server need in order to send email?

(5 points) What debugging steps can you take if you aren’t receiving any email that should be sent from a PHP script. 

(5 points) In what ways are PHP and JavaScript alike? How are they different? 

(15 points) Create a more custom contact form. Have the PHP script also send a more custom email, including any other data requested by the form. 



Chapter 13 Review and Pursue
------------------------------
(5 points) What are some of the inappropriate strings and characters that could be indicators of potential spam attempts? 

(5 points) What does the array_map() function do? What is its syntax?

(5 points) What is the most important function in the Filter extension? How is it used? 

(15 points) Apply the Filter function to the login process in Chapter 12 to guarantee that the submitted email address meets the email address format, prior to using it in a query. 



Chapter 17 Review and Pursue (p. 558)
---------------------------------------
(5 points) What impact does a database’s char- acter set, or a PHP or HTML page’s encoding, have? 

(5 points) What is a primary key? What is a foreign key?

(5 points) How do you begin a session in PHP? How do you store a value in a session? How do you retrieve a previously stored value? 

(15 points) Modify the header and other files so that each page’s title uses both the default language page title and a subtitle based upon the page being viewed (e.g., the name of the thread currently shown). 



Chapter 18 Review and Pursue
------------------------------
(5 Points) What is output buffering? What are the benefits of using it?

(5 Points) Why must the active column in the users table allow for NULL values? What is the result if active is defined as NOT NULL?

(5 Points) What are the differences between truly encrypting data and creating a hash representation of some data? 

(15 Points) Add a last_login DATETIME field to the users table and update its value when a user logs in. Use this information to indicate to the user how long it has been since the last time she or he accessed the site. 



Chapter 19 Review and Pursue (on page 659 - 660)
--------------------------------------------------
(5 points) What types of indexes does MySQL support? What criteria go into deciding what columns should be indexed and what type of index is most appropriate?

(5 points) What is a Secure Sockets Layer (SSL)? Why is it important for e-commerce sites? Do you have SSL enabled for your Web site? 

(5 points) What is a multidimensional array? 

(15 points) Create registration, login, and logout functionality for customers, using the information from Chapter 18, “Exam- ple—User Registration,” as your basis. 
