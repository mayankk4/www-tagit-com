Hi, <strong><?php echo $username; ?></strong>! You are logged in now. <?php echo anchor('/auth/logout/', 'Logout');
?>

<?php $this->load->view("/elements/header", array('heading' => $heading)) ?>

		<p>1. Show data for all organisations : FB-App | Objects | Actions | Objects-ReaderId | Users-Registered | 
													 Users-BandId | Activity-Feed </p>
		<p>2. Show data for all users </p>
		<p>3. Add Organization/ Update Organization Database</p>
		<p>4. Add user/ Update User</p>

<?php $this->load->view("/elements/footer"); ?>