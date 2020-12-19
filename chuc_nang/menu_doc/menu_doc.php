<h3>Loại Sản Phẩm </h3>
<?php 
	$sql="select * from menu_doc order by id";
	$tam=$conn->query($sql);

	echo "<div class='menu_doc' >";
	echo"<ul>";
	while($data=$tam->fetch())
	{
		$link="?thamso=xuat_san_pham_loai&id=".$data['id'];
		echo "<li><a href='$link'>";
			echo $data['ten'];
		echo "</a></li>";
	}
	echo"</ul>";
	echo "</div>";
?>