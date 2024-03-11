# Tugas praktikum 1
Nama  : ilham akbar
Nim   : 2201017
Kelas : C2

## Implementasi OOP
Konsep OOP (Object-Oriented Programming) diimplementasikan melalui penggunaan kelas dan objek. Berikut adalah kelas yang didefinisikan dalam kode:

1. Person: Ini adalah kelas abstrak yang mendefinisikan atribut name dan konstruktor untuk menginisialisasi atribut tersebut.
2. Librarian dan Patron: Kedua kelas ini mewarisi dari kelas Person, menunjukkan konsep pewarisan dalam OOP. Mereka tidak menambahkan atribut atau metode tambahan, tetapi mereka bisa digunakan untuk menambahkan fungsionalitas spesifik di masa mendatang.
3. Book: Kelas ini merepresentasikan buku dengan atribut title, author, dan checkedOut. Atribut checkedOut digunakan untuk melacak apakah buku sedang dipinjam atau tidak.
4. Library: Kelas ini merepresentasikan perpustakaan dengan atribut librarian, books, dan patrons. Kelas ini juga memiliki metode addBook, addPatron, dan performTransaction untuk menambahkan buku dan patron ke perpustakaan dan melakukan transaksi peminjaman buku.

## Implementasi Asynchronous
Konsep asynchronous diimplementasikan melalui penggunaan Future dan async/await. Dalam metode performTransaction pada kelas Library, kita melihat penggunaan Future<void> sebagai tipe pengembalian metode. Ini berarti metode tersebut melakukan operasi asynchronous dan tidak mengembalikan nilai.

Dalam tubuh metode performTransaction, kita melihat penggunaan await Future.delayed(Duration(seconds: 2)). Ini adalah contoh dari operasi asynchronous: program menunggu selama dua detik sebelum melanjutkan, tetapi tidak memblokir eksekusi kode lain selama menunggu.

Fungsi main juga ditandai dengan async, yang memungkinkan penggunaan await di dalamnya. Ini digunakan untuk menunggu performTransaction selesai sebelum mencetak “object”.

## Screenshot Hasil Program
![Screenshot (658)](https://github.com/Ilham9675/Tp1_Provis/assets/117561201/c4fada1d-5cb9-4bfb-9c94-4c3a7431c452)