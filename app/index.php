<?php
include 'koneksi.php';

// Query Aggregate untuk menghitung total surat
$query_total = mysqli_query($koneksi, "SELECT COUNT(*) as total FROM surat_masuk");
$data_total = mysqli_fetch_assoc($query_total);
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Dashboard Pengelolaan Surat</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; background-color: #f4f6f9; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; background: #fff; }
        th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        th { background-color: #007bff; color: white; }
        .btn { padding: 6px 12px; text-decoration: none; border-radius: 4px; color: white; font-size: 14px; }
        .btn-add { background-color: #28a745; margin-bottom: 10px; display: inline-block; }
        .btn-edit { background-color: #ffc107; color: black; }
        .btn-delete { background-color: #dc3545; }
        .card { background: #fff; padding: 15px; display: inline-block; border-radius: 5px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
    </style>
</head>
<body>

    <h2>Sistem Informasi Pengelolaan Surat</h2>
    <div class="card">
        <h3>Total Surat Masuk: <?php echo $data_total['total']; ?></h3>
    </div>
    <br><br>

    <a href="tambah.php" class="btn btn-add">+ Tambah Surat Masuk</a>
    <a href="laporan.php" class="btn" style="background-color: #17a2b8;">Lihat Laporan (View)</a>

    <table>
        <thead>
            <tr>
                <th>No Surat</th>
                <th>Asal Surat</th>
                <th>Perihal</th>
                <th>Tanggal Surat</th>
                <th>Kategori</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Query JOIN untuk menampilkan data surat dan kategori
            $sql = "SELECT sm.*, k.nama_kategori FROM surat_masuk sm 
                    LEFT JOIN kategori_surat k ON sm.id_kategori = k.id_kategori";
            $result = mysqli_query($koneksi, $sql);

            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . htmlspecialchars($row['no_surat']) . "</td>";
                echo "<td>" . htmlspecialchars($row['asal_surat']) . "</td>";
                echo "<td>" . htmlspecialchars($row['perihal']) . "</td>";
                echo "<td>" . $row['tanggal_surat'] . "</td>";
                echo "<td>" . ($row['nama_kategori'] ?? 'Tidak Ada') . "</td>";
                echo "<td>
                        <a href='edit.php?id=" . $row['id_surat_masuk'] . "' class='btn btn-edit'>Edit</a>
                        <a href='hapus.php?id=" . $row['id_surat_masuk'] . "' class='btn btn-delete' onclick='return confirm(\"Apakah Anda yakin ingin menghapus data ini?\")'>Hapus</a>
                      </td>";
                echo "</tr>";
            }
            ?>
        </tbody>
    </table>

</body>
</html>