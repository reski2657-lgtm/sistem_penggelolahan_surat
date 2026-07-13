<?php
include 'koneksi.php';
$kategori_options = mysqli_query($koneksi, "SELECT * FROM kategori_surat");
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Tambah Surat Masuk</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input[type="text"], input[type="date"], textarea, select { width: 100%; padding: 8px; box-sizing: border-box; }
        .btn { padding: 10px 15px; background: #28a745; color: white; border: none; cursor: pointer; text-decoration: none; }
    </style>
</head>
<body>

    <h2>Tambah Surat Masuk</h2>
    <a href="index.php" style="display:inline-block; margin-bottom: 20px;">&larr; Kembali ke Dashboard</a>

    <form action="simpan.php" method="POST">
        <div class="form-group">
            <label>Nomor Surat</label>
            <input type="text" name="no_surat" required>
        </div>
        <div class="form-group">
            <label>Asal Surat</label>
            <input type="text" name="asal_surat" required>
        </div>
        <div class="form-group">
            <label>Perihal</label>
            <textarea name="perihal" rows="4" required></textarea>
        </div>
        <div class="form-group">
            <label>Tanggal Surat</label>
            <input type="date" name="tanggal_surat" required>
        </div>
        <div class="form-group">
            <label>Tanggal Terima</label>
            <input type="date" name="tanggal_terima" required>
        </div>
        <div class="form-group">
            <label>Kategori Surat</label>
            <select name="id_kategori">
                <option value="">-- Pilih Kategori --</option>
                <?php while ($kat = mysqli_fetch_assoc($kategori_options)) { ?>
                    <option value="<?php echo $kat['id_kategori']; ?>"><?php echo $kat['nama_kategori']; ?></option>
                <?php } ?>
            </select>
        </div>
        <button type="submit" class="btn">Simpan Data</button>
    </form>

</body>
</html>