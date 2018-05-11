Graph::User.delete_all
Graph::Book.delete_all

user1 = Graph::User.create!(name: 'Dan')
user2 = Graph::User.create!(name: 'Bob')

book1 = Graph::Book.create!(title: 'How to code', genre: 'Development')
book2 = Graph::Book.create!(title: 'How to test', genre: 'Development')
book3 = Graph::Book.create!(title: 'Man O War', genre: 'Fiction')
book4 = Graph::Book.create!(title: 'Farcry', genre: 'Fiction')
book5 = Graph::Book.create!(title: 'Gardening', genre: 'DIY')

user1.like!(book1)
user1.like!(book3)
user2.like!(book1)
user2.like!(book2)
user2.like!(book3)
user2.like!(book4)
user2.like!(book5)
