arr = ["Thành phố tháng tư","Đầu xuân ra sông giặt áo","Trò chơi lãng mạn của tình yêu","Bàn có năm chỗ ngồi","Bí mật của một võ sĩ","Cô gái đến từ hôm qua"]
images = ["https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg",
  "https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg",
  "https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg",
  "https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg",
  "https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg"]
40.times do |n|
  name = "#{arr[rand(arr.length)]} #{n}"
  short_desc = "là một trong những tác phẩm viết cho lứa tuổi thiếu nhi của nhà văn Nguyễn Nhật Ánh, xuất bản năm 1984. "
  main_image = images[rand(arr.length)]
  offset = rand(Publisher.count)
  publiser = Publisher.offset(offset).first
  publisher_id = publiser.id
  amout = 100
  price = 400000 + n*1000
  hot = 0
  Product.create!(name: name,short_desc: short_desc,main_image: main_image,publisher_id: publisher_id,amount: amout,price: price,hot: hot)
end
