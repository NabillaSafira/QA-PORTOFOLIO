# Abadi Jaya Store — SQL Database Testing

## Deskripsi Project

Project ini merupakan portfolio SQL dan database testing menggunakan MySQL/MariaDB.

Project ini menggunakan database sederhana untuk mensimulasikan sistem toko yang memiliki data pelanggan, produk, dan transaksi.

## Struktur Database

Database terdiri dari tiga tabel utama:

- `pelanggan` — menyimpan data pelanggan
- `produk` — menyimpan data produk
- `transaksi` — menyimpan data transaksi

### Relasi Antar Tabel

- `pelanggan.id_pelanggan` berelasi dengan `transaksi.id_pelanggan`
- `produk.id_produk` berelasi dengan `transaksi.id_produk`

## Tools yang Digunakan

- MySQL / MariaDB
- XAMPP
- phpMyAdmin

## File Project

| File | Deskripsi |
|---|---|
| `database-export.sql` | File hasil export database dari phpMyAdmin |
| `database-setup.sql` | Script untuk membuat database, tabel, relasi, dan memasukkan data |
| `database-testing.sql` | Berisi test case dan query SQL untuk melakukan pengujian database |

## Pengujian Database

Pengujian yang dilakukan meliputi:

- Verifikasi data pelanggan
- Verifikasi stok produk
- Verifikasi data transaksi
- Verifikasi relasi antara pelanggan, produk, dan transaksi
- Verifikasi jumlah transaksi dan harga produk

## Tujuan

Project ini dibuat untuk menunjukkan kemampuan menggunakan SQL serta penerapan SQL dalam database testing dan validasi data.
