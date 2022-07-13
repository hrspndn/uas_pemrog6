<?php
$koneksi = mysqli_connect("localhost", "root", "", "perpusuas");

if (!$koneksi) {
    echo "koneksi gagal" . mysqli_connect_error();
}
