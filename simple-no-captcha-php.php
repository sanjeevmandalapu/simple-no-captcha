<?php
	$securityArray = [
		'1' => '2 - 1',
		'2' => '1 + 1',
		'3' => '2 + 1',
		'4' => '2 + 2',
		'5' => '4 + 1',
		'6' => '4 + 3',
		'7' => '4 + 3',
		'8' => '4 + 4',
		'9' => '8 + 1',
		'10'=> '9 + 1'
	];
	
	function securityMapOutput($securityArr) {
		$_mapCount = count($securityArr);
		$_securityRand = mt_rand(1, $_mapCount);
		
		echo "<label class='description captcha' for='security'>How much is $securityArr[$_securityRand] ? *</label>";
		echo "<input id='security' name='security' class='element text medium' type='text' maxlength='255' value=''/>";
		echo "<input name='security_ans' type='hidden' value='$_securityRand'/> ";
	}

	/* use this somewhere meaningful in the form page */

	securityMapOutput($securityArray);
	

	/*
		- In your post page, the $_POST['security'] and $_POST['security_ans'] should match
		- While this is the most basic/simpler approach, you can add more sauce to it by hashing the security_ans or putting it in the $_SESSION etc
	*/
?>