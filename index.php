<?php
include 'koneksi.php';
?>

<!DOCTYPE html>
<html>

<head>
    <title>Form Pencarian </title>
</head>

<body bgcolor="lightgreen">

    <h3 align="center">Form Pencarian</h3>

    <form bgcolor=action="index.php" method="get" style="text-align: Center;">
        <label>Cari :</label>
        <input type="text" name="cari">
        <input type="submit" value="Cari">
        <?php
        if (isset($_GET['cari'])) {
            $cari = $_GET['cari'];
            echo "<b>Hasil pencarian : " . $cari . "</b>";
        }
        ?>
    </form><br>



    <table border="1" align="center" bgcolor="lightblue">
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Nama Panjang</th>
            <th>Tgl Lahir</th>
            <th>Jenis Kelamin</th>
            <th>Kelas</th>
            <th>Point</th>

        </tr>
        <?php
        if (isset($_GET['cari'])) {
            $cari = $_GET['cari'];
            $data = mysqli_query($koneksi, "select * from siswa where nama like '%" . $cari . "%'");
        } else {
            $data = mysqli_query($koneksi, "select * from siswa ");
        }
        $no = 1;
        while ($d = mysqli_fetch_array($data)) {
        ?>
            <tr>
                <td><?php echo $no++; ?></td>
                <td><?php echo $d['nama']; ?></td>
                <td><?php echo $d['surname']; ?></td>
                <td><?php echo $d['tgl_lahir']; ?></td>
                <td><?php echo $d['jenis_kelamin']; ?></td>
                <td><?php echo $d['kelas']; ?></td>
                <td><?php echo $d['point']; ?></td>

            </tr>
        <?php } ?>
    </table>
</body>

</html>