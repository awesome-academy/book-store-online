arr = ["Thành phố tháng tư","Đầu xuân ra sông giặt áo","Trò chơi lãng mạn của tình yêu","Bàn có năm chỗ ngồi","Bí mật của một võ sĩ","Cô gái đến từ hôm qua"]
images = ["https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg",
  "https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg",
  "https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg",
  "https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg",
  "https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg"]
37.times do |n|
  product = Product.offset(n).first
  product_id = product.id
  author = Author.offset(n).first
  author_id = author.id
  ProductAuthor.create!(product_id: product_id,author_id: author_id)
end
