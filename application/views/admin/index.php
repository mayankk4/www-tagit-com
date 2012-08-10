<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title><?php echo $title;?></title>

	<link rel="stylesheet" type="text/css" href="/static/css/default.css" />
</head>
<body>

Hi, <strong><?php echo $username; ?></strong>! You are logged in now. <?php echo anchor('/auth/logout/', 'Logout');
?>

<div id="container">

     <?php $this->load->view("/elements/header", array('heading' => $heading)) ?>

	<div id="body">
		<p>1. Show data for all organisations : FB-App | Objects | Actions | Objects-ReaderId | Users-Registered | 
													 Users-BandId | Activity-Feed </p>
		<p>2. Show data for all users </p>
		<p>3. Add Organization/ Update Organization Database</p>
		<p>4. Add user/ Update User</p>
	</div>

     <?php $this->load->view("/elements/footer"); ?>

</div>

</body>
</html>