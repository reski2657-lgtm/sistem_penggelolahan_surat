<?php
include 'koneksi.php';
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Laporan Surat Masuk</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        th { background-color: #5a6268; color: white; }
    </style>
</head>
<body>

    <h2>Laporan Data Surat Masuk (Menggunakan View)</h2>
    <a href="index.php">&larr; Kembali ke Dashboard</a>

    <table>
        <thead>
            <tr>
                <th>No Surat</th>
                <th>Asal Surat</th>
                <th>Perihal</th>
                <th>Tanggal Surat</th>
                <th>Kategori Surat</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Memanggil data langsung dari VIEW database
            $sql = "SELECT * FROM view_laporan_surat_masuk";
            $result = mysqli_query($koneksi, $sql);

            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . htmlspecialchars($row['no_surat']) . "</td>";
                echo "<td>" . htmlspecialchars($row['asal_surat']) . "</td>";
                echo "<td>" . htmlspecialchars($row['perihal']) . "</td>";
                echo "<td>" . $row['tanggal_surat'] . "</td>";
                echo "<td>" . htmlspecialchars($row['nama_kategori'] ?? 'Tidak Ada') . "</td>";
                echo "</tr>";
            }
            ?>
        </tbody>
    </table>

</body>
</html>