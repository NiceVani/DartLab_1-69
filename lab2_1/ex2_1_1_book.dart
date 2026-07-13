class Book {
  String? title;
  String? author;
  int? price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print("ชื่่อหนังสือ: $title , ชื่อผู้เขียน: $author , ราคา: $price บาท");
  }
}

void main() {
  Book a = Book("Alice in Wonderland", "Lewis Carroll", 259);
  a.showDetail();
  Book b = Book("Sherlock Holmes", "Sir Arthur Conan Doyle", 1200);
  b.showDetail();
}
