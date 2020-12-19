<br><br>
Sản phẩm của chúng tôi 
<br><br>
<?php 
	
	$sql="select id,ten,gia,hinh_anh,thuoc_menu from san_pham where trang_chu='co' order by sap_xep_trang_chu desc limit 0,15";
	$tam=$conn->query($sql);
	echo "<table>";
	//San_pham
	while($data=$tam->fetch())
	{
		echo "<tr>";
			for($i=1;$i<=3;$i++)
			{
				echo "<td align='center' width='215px' valign='top' >";
					if($data!=false)
					{  	
						$link_anh="hinh_anh/san_pham/".$data['hinh_anh'];
						$link_chi_tiet="?thamso=chi_tiet_san_pham&id=".$data['id'];
						$gia=$data['gia'];
						$gia=number_format($gia,0,",",".");
						echo "<a href='$link_chi_tiet' >";
							echo "<img src='$link_anh' width='150px' >";
						echo "</a>";
						echo "<br>";
						echo "<br>";
						echo "<a href='$link_chi_tiet' >";
							echo $data['ten'];
						echo "</a>";
						echo "<div style='margin-top:5px' >";						
						echo $gia;
						echo "</div>";
						echo "<br>";
					}
					else 
					{
						echo "&nbsp;";
					}
				echo "</td>";
				if($i!=3)
				{
					$data=$tam->fetch();
				}
			}
		echo "</tr>";
	}
	//
	echo "</table>";
?>