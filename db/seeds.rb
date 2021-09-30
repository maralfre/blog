require 'faker'

puts "creando articulos..."
Article.delete_all

20.times do
	Article.create title: Faker::Book.title,
					text: Faker::Lorem.paragraph
end

puts "articulos creados exitosamente..."
puts "creando comentarios..."
5.times do
		Commenr.create commenter: Faker::Name.name,
						body: Faker::Lorem.sentence,
						article: Article.first
end

puts "comentarios creados"