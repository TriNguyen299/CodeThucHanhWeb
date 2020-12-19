<ul id=menu>
	<li><a href="index.php">Trang chủ</a></li>
	<li><a href="http://localhost/MVC3/category-dien_thoai-dt.html">Di động</a></li>
	<li><a href="http://localhost/MVC3/category-phu_kien-pk.html">Phụ Kiện</a></li>
	<?php
if (isset($_SESSION['user_login'])) {
	?>
		<li><a href="">Chào: <?php echo $_SESSION['user_login']['name'] ?></a></li>
		<li><a href="logout.html">Đăng xuất </a></li>
		<?php
} else {
	?>
			<li><a href="login.html">Đăng nhập</a></li>
			<li><a href="registration.html">Đăng ký</a></li>
		<?php
}
?>
<li><a href="#">Tìm Kiếm</a></li>
<li><from action="index.php?controller=Book&action=timKey" method="post" enctype="multipart/form-data">
            <input type="text" name="keyword" />	
             <input type="submit" name="" value="Search" />
</from></li>

</ul>
