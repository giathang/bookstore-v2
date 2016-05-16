# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Category
Category.create(category_name: "Hoat Hoa")
Category.create(category_name: "Khoa Hoc")
Category.create(category_name: "Toan Hoc")

# Create Book

Book.create(title: "Doremon", isbn: 1, des: "Truyen tranh doremon", category_id: 1)
Book.create(title: "Jindo", isbn: 2, des: "Truyen tranh Jindo", category_id: 1)
Book.create(title: "Than Dong Dat Viet", isbn: 3, des: "Truyen tranh ve Trang Ti", category_id: 1)
Book.create(title: "7 vien ngoc rong", isbn: 4, des: "Truyen tranh Songoku", category_id: 1)
Book.create(title: "Thuy Thu Mat Trang", isbn: 5, des: "Truyen tranh ", category_id: 1)

Book.create(title: "em yeu khoa hoc", isbn: 6, des: "Ve Khoa hoc", category_id: 2)
Book.create(title: "Khoa hoc quanh day", isbn: 7, des: "Ve Khoa hoc", category_id: 2)
Book.create(title: "Dinh Luat Niuton", isbn: 8, des: "Ve Khoa hoc", category_id: 2)
Book.create(title: "Dinh Luat Quan tinh", isbn: 9, des: "Ve Khoa hoc", category_id: 2)
Book.create(title: "Vat Ly 12", isbn: 10, des: "Ve Khoa hoc", category_id: 2)

Book.create(title: "Toan 10", isbn: 11, des: "Ve Toan hoc", category_id: 3)
Book.create(title: "thap phan", isbn: 12, des: "Ve Toan hoc", category_id: 3)
Book.create(title: "nhi phan", isbn: 13, des: "Ve Toan hoc", category_id: 3)
Book.create(title: "Dao Ham", isbn: 14, des: "Ve Toan hoc", category_id: 3)
Book.create(title: "Tam Giac", isbn: 15, des: "Ve Toan hoc", category_id: 3)



