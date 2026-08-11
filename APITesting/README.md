Create README.md
API Testing - Learn_API

Deskripsi
Folder ini berisi dokumentasi dan hasil pengujian API yang dilakukan menggunakan **Postman**. Pengujian ini dilakukan sebagai latihan sekaligus portofolio dalam mempelajari API Testing pada REST API.

Tujuan Pengujian
- Memvalidasi status code dan response data pada setiap endpoint
- Melakukan pengujian terhadap berbagai HTTP method (GET, POST, PUT, PATCH, DELETE)
- Menggunakan variabel (environment/collection variable) untuk pengujian yang lebih dinamis

Tools yang Digunakan
- **Postman** - untuk membuat, menjalankan, dan mendokumentasikan API request
- **REST API** - endpoint publik yang digunakan sebagai target pengujian

HTTP Method yang Diuji
| Method | Deskripsi |
|--------|-----------|
| GET    | Mengambil data |
| POST   | Menambahkan data baru |
| PUT    | Memperbarui data secara keseluruhan |
| PATCH  | Memperbarui sebagian data |
| DELETE | Menghapus data |

Dokumentasi Lengkap
Dokumentasi interaktif (live, otomatis update mengikuti perubahan collection):
👉 https://documenter.getpostman.com/view/37115477/2sBY4WoGRE

Isi Folder
```
apiTesting/
  ├── Learn_API.postman_collection.json   # Export collection Postman
  ├── screenshot-run.png                  # Bukti hasil run (pass/fail)
  └── README.md                           # Dokumentasi ini
```

Catatan
File `.json` di folder ini bisa di-import langsung ke Postman untuk melihat detail request, header, body, dan test script yang digunakan.
