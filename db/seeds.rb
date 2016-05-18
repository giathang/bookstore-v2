categories_list = [
    'Hoat Hoa',
    'Khoa Hoc',
    'Toan Hoc'
]
categories_list.each do |category|
    Category.create(category_name: category)
end

books_list = [
    ['Doremon', 'Truyen Tranh Do Re Mon', 123, 1],
    ['Doremon', 'Truyen Tranh Do Re Mon', 122, 1],
    ['Doremon', 'Truyen Tranh Do Re Mon', 121, 1],
    ['Doremon', 'Truyen Tranh Do Re Mon', 120, 1],
    ['Doremon', 'Truyen Tranh Do Re Mon', 126, 1],

    ['Dinh Luat Bao Toan Khoi Luong', 'em yeu khoa hoc', 133, 2],
    ['Dinh Luat Bao Toan Khoi Luong', 'em yeu khoa hoc', 132, 2],
    ['Dinh Luat Bao Toan Khoi Luong', 'em yeu khoa hoc', 131, 2],
    ['Dinh Luat Bao Toan Khoi Luong', 'em yeu khoa hoc', 135, 2],
    ['Dinh Luat Bao Toan Khoi Luong', 'em yeu khoa hoc', 137, 2],

    ['Toan Lop 12', 'tinh roi toan ', 156, 3],
    ['Toan Lop 12', 'tinh roi toan ', 155, 3],
    ['Toan Lop 12', 'tinh roi toan ', 152, 3],
    ['Toan Lop 12', 'tinh roi toan ', 151, 3],
    ['Toan Lop 12', 'tinh roi toan ', 150, 3],
]

books_list.each do |title, des, isbn, category_id|
    Book.create(title: title, des: des, isbn: isbn, category_id: category_id)
end
