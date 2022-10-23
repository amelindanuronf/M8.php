<!DOCTYPE html>
<html>
<head>
    <title>Data Pahlawan Nasional Indonesia</title>
</head>
<body>
 
    <center>
        <h2>Data Pahlawan Nasional Indonesia</h2>

        <table width="900" border="1" .center{text-align: center;}>
            <tr>
                <th>No</th>
                <th>Foto</th>
                <th>Nama</th>
                <th>Jenis Kelamin</th>
                <th>Tempat Lahir</th>
                <th>Tanggal Lahir</th>
                <th>Gugur/Meninggal</th>
            </tr>
            <?php
            $conn = mysqli_connect('localhost', 'root', '', 'daftarpahlawan');
 
            $hasil  = mysqli_query($conn, "SELECT * FROM datapahlawan") or die(mysqli_error($conn));
 
            $no     = 1;
            while($data = mysqli_fetch_array($hasil)): ?>
                <tr>
                    <td style="vertical-align : middle;text-align:center;"><?php echo $no++; ?></td>
                    <td style="vertical-align : middle;text-align:center;"><img src=" <?php echo $data ['Foto'];?>" width='100px' height='100px'></td>
                    <td><?php echo $data['Nama']; ?></td>
                    <td style="vertical-align : middle;text-align:center;" ><?php echo $data['Jenis Kelamin']; ?></td>
                    <td><?php echo $data['Tempat Lahir']; ?></td>
                    <td style="vertical-align : middle;text-align:center;" ><?php echo $data['Tanggal Lahir']; ?></td>
                    <td style="vertical-align : middle;text-align:center;"><?php echo $data['Gugur/Meninggal']; ?></td>
                </tr>
                
            <?php endwhile; ?>
        </table>
        <div align="center"><a href="form_1.php"><input type="button" value="+ Tambah Data"></div><br>
 
    </center>
</body>
</html>