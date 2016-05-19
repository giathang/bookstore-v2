categories_list = [
    "Thieu Nhi",
    "Phieu Luu",
    "Khoa Hoc"
]

books_list = [
    ['The Fault in our Stars ', '(Khi lỗi thuộc về những vì sao)', 2],
    ['The Catcher in the Rye ', 'Bắt trẻ đồng xanh', 4],
    ['The Book Thief', 'Kẻ trộm sách', 6],
    ['The Drifters', 'Sáu người đi khắp thế gian', 7],
    ['To Kill a Mockingbird', 'Giết con chim nhại', 1],
    ['Biển Và Chim Bói Cá', 'Biển Và Chim Bói Cá', 3],
    ['Sào huyệt của nhũng ông trùm', 'Sào huyệt của nhũng ông trùm', 5],
    ['Chó dẫn đường phiêu lưu ký', 'Chó dẫn đường phiêu lưu ký', 8],
    ['Đối mặt với thực tại', 'Đối mặt với thực tại', 9],
    ['7 Ảo Tưởng Tình Yêu', '7 Ảo Tưởng Tình Yêu', 10],
    ['Hạnh phúc là điều có thật', 'ạnh phúc là điều có thật', 11],
    ['Tự Đào Giếng Trước Khi Chết Khát', 'Tự Đào Giếng Trước Khi Chết Khát', 12],
    ['Động Lực 3.0', 'Động Lực 3.0', 13],
    ['Đặng Thái Sơn – Người được Chopin chọn', ' Người được Chopin chọ', 14],
    ['Gia Dinh Hanh Phuc', ' Người được Chopin chọ', 15]
]

categories_list.each do |category_name|
  c = Category.create(category_name: category_name)

  books = []
  5.times do
    books << books_list[rand(books_list.length)]
    books_list = books_list - books
  end
  books.each do |title, des, isbn|
    Book.create(title: title, des: des, isbn: isbn, category_id: c.id)
  end
end
