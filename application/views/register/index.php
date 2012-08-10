<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title><?php echo $title;?></title>

	<link rel="stylesheet" type="text/css" href="/static/css/default.css" />
</head>
<body>

<div id="container">

     <?php $this->load->view("/elements/header", array('heading' => $heading)) ?>

	<div id="body">
		<p>1. Register as a User</p>		
		<p>2. Register as an Organization</p>		
	</div>

     <?php $this->load->view("/elements/footer"); ?>

</div>

</body>
</html>