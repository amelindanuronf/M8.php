<?php

$host = "localhost";
$name = "root";
$pass = "";
$db = "daftarpahlawan";

// create connection
$conn = new mysqli($host,$name,$pass,$db);


    $id = filter_input(INPUT_POST, 'Id');

    $foto = $_FILES['Foto']['name'];
    $path = "images/".$foto;
    $path = $foto;
            
    $nama = filter_input(INPUT_POST, 'Nama');
    $jenis_kelamin = filter_input(INPUT_POST, 'Jenis_Kelamin');
    $tempat_lahir = filter_input(INPUT_POST, 'Tempat_Lahir');
    $tgl_lahir=$_POST['thn']."-".$_POST['bln']."-".$_POST['tgl'];
    $gugur=$_POST['tahun']."-".$_POST['bulan']."-".$_POST['tanggal'];

    //query untuk memasukkan data ke dalam database
    $query=mysqli_query($conn, "INSERT INTO datapahlawan VALUES ('$id','$foto',
    '$nama', '$jenis_kelamin', '$tempat_lahir', '$tgl_lahir', '$gugur')") or die (mysqli_error($conn));
    // Script untuk menampilkan pesan ketika berhasil menambah data
    if ($query){
        header('location:form_1.php?message=success');
        }
    else {
        echo "<h3>Data Gagal Disimpan!</h3>";
    }
    
?>