<?php
session_start();
include("ket_noi.php");
include("chuc_nang/ham/ham.php");
if (isset($_POST['thong_tin_khach_hang'])) {
	include("chuc_nang/gio_hang/thuc_hien_mua_hang.php");
}
if (isset($_POST['cap_nhat_gio_hang'])) {
	include("chuc_nang/gio_hang/cap_nhat_gio_hang.php");
	trang_truoc();
}
?>
<html>

<head>
	<meta charset="UTF-8">
	<title>Điện Thoại CatPhone</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
	<div id="container">
		<center>
			<table width="100%">
				<tr>
					<td colspan="3"><?php include("subpage/header.php"); ?>
					</td>
					
				</tr>

				<tr>
					<td colspan="3" height="50px">
						<?php
						include("chuc_nang/menu_ngang/menu_ngang.php");
						?>
					</td>
				</tr>
				<tr>
				<td>
				<button >SOURCE</button>
				</td>
				</tr>
				<tr>
					<td width="170px" valign="between">
						<?php
						include("chuc_nang/menu_doc/menu_doc.php");
						//include("chuc_nang/san_pham/moi.php"); 
						//include("chuc_nang/quang_cao/trai.php"); 
						?>
					</td>
					<td width="650px" valign="top">
						<?php
						include("chuc_nang/dieu_huong.php");
						?>
					</td>
					<td width="170px" valign="top">
						
					</td>
				</tr>
				<tr>
					<td colspan="3" height="50px">
						<?php include("subpage/footer.php"); ?></td>
				</tr>
			</table>
		</center>
	</div>
</body>

</html>