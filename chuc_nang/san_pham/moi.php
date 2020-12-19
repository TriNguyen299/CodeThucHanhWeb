<br><br>
Sản phẩm mới <br><br>
<center>
	<?php 
		$sql="select id,ten,hinh_anh from san_pham order by id desc limit 0,3";
		$tam=$conn->query($sql);
		while($data=$tam->fetch())
		{
			$link_anh="hinh_anh/san_pham/".$data['hinh_anh'];
			$link_chi_tiet="?thamso=chi_tiet_san_pham&id=".$data['id'];
			echo "<a href='$link_chi_tiet' >";
				echo "<img src='$link_anh' width='100px' >";
			echo "</a>";
			echo "<br><br>";
			echo $data['ten'];
			echo "<br>";
			echo "<br>";
		}
	?>
</center>
