<?php
include 'koneksi.php';

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    
    // Query SQL DML Delete
    $sql = "DELETE FROM surat_masuk WHERE id_surat_masuk = $id";
    
    if (mysqli_query($koneksi, $sql)) {
        header("Location: index.php?status=deleted");
    } else {
        echo "Gagal menghapus data: " . mysqli_error($koneksi);
    }
} else {
    header("Location: index.php");
}
?>