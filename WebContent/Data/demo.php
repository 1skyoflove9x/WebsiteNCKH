<?php
if(!empty($_FILES["employee_file"]["name"]))
{
	$connect = mysqli_connect("localhost", "root", "", "detainckh");
	$output = '';
	$allowed_ext = array("csv");
	$extension = end(explode(".", $_FILES["employee_file"]["name"]));
	if(in_array($extension, $allowed_ext))
	{
		$file_data = fopen($_FILES["employee_file"]["tmp_name"], 'r');
		fgetcsv($file_data);
		while($row = fgetcsv($file_data))
		{
			$id = mysqli_real_escape_string($connect, $row[0]);
			$username = mysqli_real_escape_string($connect, $row[1]);
			$password = mysqli_real_escape_string($connect, $row[2]);
			$query = "
			INSERT INTO user
			(id, username, password)
			VALUES ('$id', '$username', '$password')
			";
			mysqli_query($connect, $query);
		}
		$select = "SELECT * FROM user ORDER BY id DESC";
		$result = mysqli_query($connect, $select);
		$output .= '
                <table class="table table-bordered">
                     <tr>
                          <th width="5%">ID</th>
                          <th width="25%">Username</th>
                          <th width="35%">Password</th>
                     </tr>
           ';
		while($row = mysqli_fetch_array($result))
		{
			$output .= '
                     <tr>
                          <td>'.$row["id"].'</td>
                          <td>'.$row["username"].'</td>
                          <td>'.$row["password"].'</td>
                     </tr>
                ';
		}
		$output .= '</table>';
		echo $output;
	}
	else
	{
		echo 'Error1';
	}
}
else
{
	echo "Error2";
}
?>