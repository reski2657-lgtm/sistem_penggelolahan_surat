<?php
include 'koneksi.php';

// Validasi input kosong (Server-side validation)
if (empty($_POST['no_surat']) || empty($_POST['asal_surat']) || empty($_POST['perihal']) || empty($_POST['tanggal_surat']) || empty($_POST['tanggal_terima'])) {
    die("Error: Semua kolom wajib diisi!");
}

$no_surat      = mysqli_real_escape_string($koneksi, $_POST['no_surat']);
$asal_surat    = mysqli_real_escape_string($koneksi, $_POST['asal_surat']);
$perihal       = mysqli_real_escape_string($koneksi, $_POST['perihal']);
$tanggal_surat = $_POST['tanggal_surat'];
$tanggal_terima = $_POST['tanggal_terima'];
$id_kategori   = !empty($_POST['id_kategori']) ? $_POST['id_kategori'] : "NULL";

// Query SQL DML Insert
$sql = "INSERT INTO surat_masuk (no_surat, asal_surat, perihal, tanggal_surat, tanggal_terima, id_kategori) 
        VALUES ('$no_surat', '$asal_surat', '$perihal', '$tanggal_surat', '$tanggal_terima', $id_kategori)";

if (mysqli_query($koneksi, $sql)) {
    header("Location: index.php?status=success");
} else {
    echo "Gagal menyimpan data: " . mysqli_error($koneksi);
}
?>