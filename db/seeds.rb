# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#one_post = Post.last
#Comment.create(name: 'Fulano', email: 'abc@abc.com', body: 'Good thinking', post_id: one_post.id)
#Comment.create(name: 'Ciclano', email: 'ciclano@abc.com', body: 'Awesome thinking', post_id: one_post.id)
#Comment.create(name: 'Beltrano', email: 'beltrano@abc.com', body: 'Not so good thinking', post_id: one_post.id)

User.create(username: 'admin', email: 'admin@admin.com', password: '12345678')