# Abadi Jaya Store — SQL Database Testing

## Deskripsi Project

Project ini merupakan portfolio pengujian database menggunakan SQL dengan MySQL/MariaDB.

Project ini mensimulasikan database sederhana untuk toko yang terdiri dari data pelanggan, produk, dan transaksi.

## Struktur Database

Database terdiri dari tiga tabel utama:

- `pelanggan` — menyimpan data pelanggan
- `produk` — menyimpan data produk
- `transaksi` — menyimpan data transaksi

### Relasi Antar Tabel

- `pelanggan.id_pelanggan` → `transaksi.id_pelanggan`
- `produk.id_produk` → `transaksi.id_produk`

## Tools yang Digunakan

- MySQL / MariaDB
- XAMPP
- phpMyAdmin

## File Project

| File | Deskripsi |
|---|---|
| `01-database-setup.sql` | Membuat database, tabel, relasi, dan memasukkan data |
| `02-sql-queries.sql` | Berisi query SQL untuk mengambil dan mengolah data |
| `03-database-testing.sql` | Berisi test case dan query SQL untuk melakukan pengujian database |

## Pengujian Database

Pengujian yang dilakukan meliputi:

- Verifikasi data pelanggan
- Verifikasi stok produk
- Verifikasi data transaksi
- Verifikasi relasi antar tabel
- Verifikasi jumlah transaksi dan harga produk

## Tujuan

Project ini dibuat untuk menunjukkan kemampuan dalam menggunakan SQL serta penerapan SQL untuk database testing dan validasi data.
