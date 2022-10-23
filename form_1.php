<!DOCTYPE html>
<html>
<head>
    <title>Data Pahlawan Nasional Indonesia</title>
    
</head>

<body>
<h1 align ="center"> Data Pahlawan Nasional Indonesia</h1>
    
    <form name="form" method="post" action="connect_1.php" enctype="multipart/form-data";>
        
    <table width="500" align ="center" cellpadding="5" cellspacing="5" border-style="0" background-color="#D2B48C">
        <tr>       
            <td>Id</td>
            <td>:</td>
            <td><input type= "text" name= "Id" id="id" required="required"/></td>
        </tr>

        <tr>
            <td>Foto</td>
            <td>:</td>
            <td><input type="file" name="Foto" id="foto" required="required"/></td>
        </tr>

        <tr>       
            <td>Nama</td>
            <td>:</td>
            <td><input type= "text" name= "Nama" id="nama" size="40" maxlength="50" required="required"/></td>
        </tr>          
    
        <tr>
            <td>Jenis Kelamin</td>
            <td>:</td>
            <td><input name="Jenis_Kelamin" type="radio" value="Laki-laki" required="required">Laki-Laki
                <input name="Jenis_Kelamin" type="radio" value="Perempuan" required="required">Perempuan
            </td>
        </tr>
        
        <tr>       
            <td>Tempat Lahir</td>
            <td>:</td>
            <td><input type= "text" name= "Tempat_Lahir" id="tempat_lahir" size="40" maxlength="50" required="required"/></td>
        </tr>  

        <tr>
            <td>Tanggal Lahir</td>
            <td>:</td>
            <td>
                <select name="tgl" size="1" id="tgl">
                <?php
                for ($i=1;$i<=31;$i++)
                {
                echo "<option value=".$i.">".$i."</option>";
                }
                ?>
                </select>
            
                <select name="bln" size="1" id="bln">
                <?php
                $bulan=array("","Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
                for ($i=1;$i<=12;$i++)
                {
                echo "<option value=".$i.">".$bulan[$i]."</option>";
                }
                ?>
                </select>

                <select name="thn" size="1" id="thn">
                <?php
                for ($i=1800;$i<=1950;$i++)
                {
                echo "<option value=".$i.">".$i."</option>";
                }
                ?>
                </select>
            </td>
        </tr>

        <tr>
            <td>Gugur/Meninggal</td>
            <td>:</td>
            <td>
                <select name="tanggal" size="1" id="tanggal">
                <?php
                for ($i=1;$i<=31;$i++)
                {
                echo "<option value=".$i.">".$i."</option>";
                }
                ?>
                </select>
            
                <select name="bulan" size="1" id="bulan">
                <?php
                $bulan=array("","Januari","Februari","Maret","April","Mei","Juni","Juli","Agustus","September","Oktober","November","Desember");
                for ($i=1;$i<=12;$i++)
                {
                echo "<option value=".$i.">".$bulan[$i]."</option>";
                }
                ?>
                </select>

                <select name="tahun" size="1" id="tahun">
                <?php
                for ($i=1800;$i<=2000;$i++)
                {
                echo "<option value=".$i.">".$i."</option>";
                }
                ?>
                </select>
            </td>
        </tr>

        <tr>
            <td colspan="3" align="center">
            <input name="simpan" type="submit" id="simpan" value="Add Data">
        </tr>
        <tr>
        <td><a href="showresult_1.php"><input type="button" value="Lihat Data"></div><br>
        </td>
        </tr>

    </table>
    </form>

</body>
</html>