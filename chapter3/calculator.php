<?php # Review and Pursue

$page_title = 'Trip Cost Calculator Edited';
include ('/Week3/includes/header.html');

// Check for form submission:
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

	// Minimal form validation:
	if (isset($_POST['distance'], $_POST['gallon_price'], $_POST['efficiency']) &&
	 is_numeric($_POST['distance']) && is_numeric($_POST['gallon_price']) && is_numeric($_POST['efficiency']) ) {
	
		// Calculate the results:
		$gallons = $_POST['distance'] / $_POST['efficiency'];
		$dollars = $gallons * $_POST['gallon_price'];
		$hours = $_POST['distance']/65;
		return number_format($dollars, 2);
		
		$radio_values = array('3.00', '3.50', '4.00', '5.00');
		foreach ($radio_values as $radio_value) {
				create_radio($radio_value);
			}
		
		// Print the results:
		echo '<h1>Total Estimated Cost</h1>
	<p>The total cost of driving ' . $_POST['distance'] . ' miles, averaging ' . $_POST['efficiency'] . ' miles per gallon, and paying an average of $' . $_POST['gallon_price'] . ' per gallon, is $' . number_format ($dollars, 2) . '. If you drive at an average of 65 miles per hour, the trip will take approximately ' . number_format($hours, 2) . ' hours.</p>';
	
	} else { // Invalid submitted values.
		echo '<h1>Error!</h1>
		<p class="error">Please enter a valid distance, price per gallon, and fuel efficiency.</p>';
	}
	
	echo '<input type="radio" name="' . $name . '" value="' . $value . '"';
	
	if (isset($_POST[$name]) && ($_POST[$name] == $value)) {
		echo ' checked="checked" ';
		
		}
	echo " /> $value ";

} // End of main submission IF.

// Leave the PHP section and create the HTML form:
?>

<h1>Trip Cost Calculator</h1>
<form action="calculator.php" method="post">
	<p>Distance (in miles): 
	<select name="distance">
				<option value="">Select...</option>
				<option value="45">45</option>
				<option value="55">55</option	>
				<option value="75">75</option>
				</select>
	
	</p>
	<p>Ave. Price Per Gallon: <span class="input">
		<input type="radio" name="gallon_price" value="3.00" /> 3.00 
		<input type="radio" name="gallon_price" value="3.50" /> 3.50 
		<input type="radio" name="gallon_price" value="4.00" /> 4.00
	</span></p>
	
	<p>Fuel Efficiency: 
	<select name="efficiency">
		<option value="10"><?php if (isset($_POST['efficiency']) &&
		($_POST['efficiency'] ==
		'10')) echo ' selected="selected"'; ?>>Terrible</option>
		
		<option value="20"><?php if (isset($_POST['efficiency']) &&
		($_POST['efficiency'] ==
		'20')) echo ' selected="selected"'; ?>>Decent</option>
		
		<option value="30"><?php if (isset($_POST['efficiency']) &&
		($_POST['efficiency'] ==
		'30')) echo ' selected="selected"'; ?>>Very Good</option>
		
		<option value="50"><?php if (isset($_POST['efficiency']) &&
		($_POST['efficiency'] ==
		'50')) echo ' selected="selected"'; ?>>Outstanding</option>
	</select></p>
		
	<p><input type="submit" name="submit" value="Calculate!" /></p>
</form>

<?php include ('/Week3/includes/footer.html'); ?>