categories_list = [
    "Thieu Nhi",
    "Phieu Luu",
    "Khoa Hoc"
]

books_list = [
    'The Fault in our Stars (Khi lỗi thuộc về những vì sao)',
    'The Catcher in the Rye (Bắt trẻ đồng xanh)',
    'The Book Thief (Kẻ trộm sách)',
    'The Drifters (Sáu người đi khắp thế gian)',
    'To Kill a Mockingbird (Giết con chim nhại)',
    'Biển Và Chim Bói Cá',
    'Sào huyệt của nhũng ông trùm',
    'Chó dẫn đường phiêu lưu ký',
    'Đối mặt với thực tại',
    '7 Ảo Tưởng Tình Yêu',
    'Hạnh phúc là điều có thật',
    'Tự Đào Giếng Trước Khi Chết Khát',
    'Động Lực 3.0',
    'Đặng Thái Sơn – Người được Chopin chọn'
]
categories_list.each do |category|
  Category.create(category_name: category)
end
