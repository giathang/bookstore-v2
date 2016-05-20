categories_list = [
    "Thieu Nhi",
    "Phieu Luu",
    "Khoa Hoc"
]

books_list = [
  {
      title:  'A Hash', des: 'a collection of key-value pairs'
  },
  {
      title: 'The Fault in our Stars', des: 'Khi lỗi thuộc về những vì sao'
  },
  {
      title: 'Hạnh phúc là điều có thật', des: 'ạnh phúc là điều có thật'
  },
  {
      title: 'Gia Dinh Hanh Phuc', des: 'Người được Chopin chọ'
  },
  {
      title: 'The Catcher in the Rye', des: 'Bắt trẻ đồng xanh'
  },
  {
      title: '7 Ảo Tưởng Tình Yêu', des: '	7 Ảo Tưởng Tình Yêu'
  },
  {
      title: 'Biển Và Chim Bói Cá', des: '	Biển Và Chim Bói Cá'
  },
  {
      title: 'Đặng Thái Sơn – Người được Chopin chọn', des: 'Người được Chopin chọ'
  },
  {
      title: 'Đối mặt với thực tại', des: 'Đối mặt với thực tại'
  },
  {
      title: 'To Kill a Mockingbird', des: 'Giết con chim nhại'
  },
  {
      title: 'Tự Đào Giếng Trước Khi Chết Khát', des: 'Tự Đào Giếng Trước Khi Chết Khát'
  },
  {
      title: 'Chó dẫn đường phiêu lưu ký', des: 'Chó dẫn đường phiêu lưu ký'
  },
  {
      title: 'Sào huyệt ông trùm', des: 'Sào huyệt của nhũng ông trùm'
  },
  {
      title: 'Object', des: 'Sào huyệt  ông trùm'
  },
  {
      title: 'Object', des: 'Sào huyệt của nhũng ông trùm'
  }
]
isbn_list = []

until isbn_list.count == 15
  isbn =  1 + rand(15)
  unless isbn_list.include?(isbn)
    isbn_list << isbn
  else
    isbn = 1 + rand(15)
  end
end

categories_list.each do |category_name|
  c = Category.create(category_name: category_name)

  books = []

  5.times do
    books << books_list[rand(books_list.length)]
    books_list = books_list - books
  end




  books.each do |book|
    book[:category_id] = c.id

    book[:isbn] = isbn_list.pop
    Book.create(book)
  end
end
