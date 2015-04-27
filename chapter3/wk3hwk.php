<!DOCTYPE=HTML>

<head>
<!--Bronwyn Weis
CIS 117
1/27/2014 Week 3 Homework
Designing Dynamic Web Sites

Chapter 3 Review and Pursue-->
</head>

<body>

<p> How do you make the following form elements sticky?<br>

<ol type="1">
	<li>text input<br>
	answer: To make text input sticky you would utilize the value attribute to preset what is entered in a text input. Then<br>
	utilize the echo function to tell the browser to display the populated value.</li>
		<ol type="a">
			<li>An example of a sticky form.</li></ol>						
				<form>
				<input type="text" name="distance" 
				value="<?php if (isset($_POST['distance']))
				{  echo $_POST['distance'];
				}?>"/>	
				</form>
			<li>Select menu: a drop down or pulldown menu or box<br>
				<form>
				<p>What is your card type?
				<select name="cardtype" value="<?php
				if (isset($_POST['cardtype']))
				{ echo $_POST['cardtype'];
				}?>">
				
				<option value="">Select...</option>
				<option value="visa">Visa</option>
				<option value="discover">Discover</option>
				<option value="mastercard">Mastercard</option>
				</select>
			</p>
			<p><input type="submit" name="submit" value="submit" /></p>
			</form>
</p>
<p>
	<form>
				Radio button: 

				<input type=”radio” name=”card” <?php if (isset($card) && $card==”visa”) echo “checked”;?>
					value=”visa”>Visa
				<input type=”radio” name=”card” <?php if (isset($gender) && $gender==”mastercard”) echo “checked”;?> value=”mastercard”>mastercard
				<p><input type="submit" name="submit" value="submit" /></p>
	</form>

	<form>
				Check box:

				<input type=”checkbox” name=”card[]” value=”Visa” checked=”checked” />
				<p><input type="submit" name="submit" value="submit" /></p>
	</form>
	
	<form>
				Textarea:
				<textarea name=”comments” rows=”4” cols=”30”><?php echo $comments;?></textarea>
				<p><input type="submit" name="submit" value="submit" /></p>
	</form>

</p>

<p>
2.If you have a PHP error caused by code placed within an HTML tag, where must you look to find the error message?
</p>
<p>If you have a php error then you would need to look in the php document to find the mistake. Since this is<br>
written with php you would need to have your errors turned on in the php config ini file or check the error log</p>
<p>
3.	(5 points) What is the difference between include() and include_once()? Which function should you generally avoid using and why?
Answer: Include once takes the server more time to display the page than include because with include once the server first must<br>
check to see if there has already been one inclusion. Therefore, you should use include preferentially.
</p>
<p>
4.	(15 points) As a more advanced trick, rewrite:

 calculator.php

so that the create_ radio() function call is only in the script once, but –	still creates three radio buttons. 

Hint: Use a loop.
</p>

<p>
<a href="Week3/calculator.php">Calculator PHP</a>

</p>

</body>