// Impor library untuk operasi asynchronous
import 'dart:async';

// Kelas abstrak Person dengan atribut nama
abstract class Person {
  String name;

  Person(this.name);  // Konstruktor
}

// Kelas Librarian yang mewarisi dari Person
class Librarian extends Person {
  Librarian(String name) : super(name);  // Konstruktor
}

// Kelas Patron yang mewarisi dari Person
class Patron extends Person {
  Patron(String name) : super(name);  // Konstruktor
}

// Kelas Book dengan atribut judul, penulis, dan status peminjaman
class Book {
  String title;
  String author;
  bool checkedOut = false;

  Book(this.title, this.author);  // Konstruktor
}

// Kelas Library dengan atribut librarian, books, dan patrons
class Library {
  Librarian librarian;
  List<Book> books = [];
  List<Patron> patrons = [];

  Library(this.librarian);  // Konstruktor

  // Metode untuk menambahkan buku ke perpustakaan
  void addBook(Book book) {
    books.add(book);
  }

  // Metode untuk menambahkan patron ke perpustakaan
  void addPatron(Patron patron) {
    patrons.add(patron);
  }

  // Metode asynchronous untuk melakukan transaksi peminjaman buku
  Future<void> performTransaction(Patron patron, Book book) async {
    await Future.delayed(Duration(seconds: 2));  // Menunda eksekusi selama 2 detik
    if (!book.checkedOut) {
      book.checkedOut = true;
      print('${patron.name} checked out ${book.title}.');
    } else {
      print('Sorry, ${book.title} is already checked out.');
    }
  }
}

// Fungsi main
void main() async {
  var librarian = Librarian('Libby');  // Membuat objek Librarian
  var library = Library(librarian);  // Membuat objek Library
  var book = Book('Moby Dick', 'Herman Melville');  // Membuat objek Book
  library.addBook(book);  // Menambahkan buku ke perpustakaan
  var patron = Patron('Pat');  // Membuat objek Patron
  library.addPatron(patron);  // Menambahkan patron ke perpustakaan
  await library.performTransaction(patron, book);  // Melakukan transaksi peminjaman buku
  print("object");
}
