<?php 
    if(isset($_REQUEST["submit"]))
    {
		$db= mysqli_connect("fdb5.biz.nf", "2114720_videolib", "@Bhi1996", "2114720_videolib");
		if(mysqli_connect_errno())
		{
			echo "ERROR ";
			exit();
		}
		
		$query = "SELECT * FROM customers";
		$result = mysqli_query($db, $query);
		if(!$result)
		{
			print " Error - the query couldn't be executed";
			exit;
		}
		
		print "<table>";
		print "<tr align = 'center'>";
		
		$num_rows = mysqli_num_rows($result);
		if($num_rows > 0)
		{
			$row = mysqli_fetch_assoc($result);
			$num_fields = mysqli_num_fields($result);
			$keys = array_keys($row);
			for($index = 0; $index < $num_fields; $index++)
				print "<th>".$keys[$index]."</th>";
				
			print "</tr>";
			
			for($row_num = 0; $row_num < $num_rows; $row_num++)
			{
				print "<tr>";
				$values = array_values($row);
				for($index = 0; $index < $num_fields; $index++)
				{
					$value = htmlspecialchars($values[$index]);
					print "<td>".$value."</td>";
				}
				print "</tr>";
				$row = mysqli_fetch_assoc($result);
			}
		}
		else
		{
			print "THERE WERE NO SUCH ROWS IN THE TABLE <br/>";
		}
		print "</table>";
    }
?>
    