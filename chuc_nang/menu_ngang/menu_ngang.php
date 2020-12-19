
<?php 
	$sql="select id,ten,loai_menu from menu_ngang order by id";
	$tam=$conn->query($sql); //ket noi
	echo "<div class='menu_ngang' >";
	echo"<ul>";
	
	echo "<li><a href='index.php'>Trang chủ</a></li>";
	echo "<li><a href='#'>Tin Tức</a></li>";
	echo "<li><a href='#'>Giới Thiệu</a></li>";
	echo "<li><a href='#'>Bảo Hành</a></li>";
	echo "<li><a href='#'>Liên Hệ</a></li>";
	echo "<li><a href='#'>Trả Góp 0%</a></li>";
	echo "<li><a href='#'>Tuyển Dụng</a></li>";
	echo"</ul>";
	echo "</div>";
?>