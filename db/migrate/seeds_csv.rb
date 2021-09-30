require 'csv'
file_path = Rails.root.join("db", "data.csv)

csv.foreach(file_path, headers: true) do |row|
	article = Article.create!(title: row['title'], text: row['text'])
	
	5.times do
		Comment.create(commenter: Faker::Name.name,
						body: Faker::Lorem.sentence,
						article: article)
	end
end
	