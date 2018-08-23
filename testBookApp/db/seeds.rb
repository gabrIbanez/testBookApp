# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
p "Books => Trash"
Author.destroy_all
p "Author => Trash"


victor = Author.create(first_name: "Victor", last_name: 'Hugo', birth_date: "1802-02-26 00:00:00", city: "Paris", nb_of_book_published: 0)
boris = Author.create(first_name: "Boris", last_name: 'Vian', birth_date: "1920-03-10 00:00:00", city: "Ville d'Avray", nb_of_book_published: 0)
edmon = Author.create(first_name: "Edmon", last_name: 'Rostan', birth_date: "1868-04-01 00:00:00", city: "Marseille", nb_of_book_published: 0)



Book.create(name: 'Les Misérables', published_date: "1862-01-22 00:00:00", 
	description: "Dans ce roman emblématique de la littérature française qui décrit la vie de miséreux dans Paris et la France provinciale du xixe siècle, l'auteur s'attache plus particulièrement au destin du bagnard Jean Valjean. C'est un roman historique, social et philosophique dans lequel on retrouve les idéaux du romantisme et ceux de Victor Hugo concernant la nature humaine.", 
	author_name: victor.name, author: victor)
Book.create(name: 'Notre Dame de Paris', published_date: "1833-01-22 00:00:00", 
	description: "Notre-Dame de Paris (titre complet : Notre-Dame de Paris. 1482) est un roman historique de l'écrivain français Victor Hugo, publié en 1831. Le titre fait référence à la cathédrale de Paris, Notre-Dame, qui est un des lieux principaux de l'intrigue du roman.", 
	author_name: victor.name, author: victor)
Book.create(name: 'Le Dernier jours d un condamné', published_date: "1862-01-22 00:00:00", 
	description: "Victor Hugo rencontre plusieurs fois le spectacle de la guillotine et s’indigne de ce que la société se permet de faire de sang-froid ce qu’elle reproche à l’accusé d’avoir fait. C’est au lendemain d’une traversée de la place de l’Hôtel-de-Ville où le bourreau graissait la guillotine en prévision de l’exécution prévue le soir même que Victor Hugo se lance dans l’écriture du Dernier Jour d’un condamné qu’il achève très rapidement1. Le livre est édité en février 1829 par l’éditeur Charles Gosselin mais sans nom d’auteur. Ce n’est que trois ans plus tard, le 15 mars 1832, que Victor Hugo complète son roman par une longue préface qu’il signe de son nom.", 
	author_name: victor.name, author: victor)
Book.create(name: 'Lucrèce Borgia', published_date: "1832-01-22 00:00:00", 
	description: "Les borgias sont des beaux salaut, raconté par Victor Hugo", 
	author_name: victor.name, author: victor)

Book.create(name: 'L écume des jours', published_date: "1947-03-20 00:00:00", 
	description: "L'Écume des jours est un roman de Boris Vian, considéré aussi comme un conte. Publié le 20 mars 1947, il a été rédigé entre mars et mai 1946 au dos d’imprimés de l’AFNOR et dédié à sa première épouse Michelle.", 
	author_name: boris.name, author: boris)
Book.create(name: 'J irai craché sur vos tombes', published_date: "1946-11-21 00:00:00", 
	description: "Dans ce roman emblématique de la littérature française qui décrit la vie de miséreux dans Paris et la France provinciale du xixe siècle, l'auteur s'attales idéaux du romantisme et ceux de Victor Hugo concernant la nature humaine.", 
	author_name: boris.name, author: boris)
Book.create(name: 'Les secrets Vol 1', published_date: "1948-05-22 00:00:00", 
	description: "Livre secret de Boris Vian....", 
	author_name: boris.name, author: boris)
Book.create(name: 'Les secrets Vol 2', published_date: "1949-08-12 00:00:00", 
	description: "Livre secret de Boris Vian....Vol 2", 
	author_name: boris.name, author: boris)
Book.create(name: 'Les secrets Vol 3', published_date: "1959-10-02 00:00:00", 
	description: "Livre secret de Boris Vian.... Vol 3", 
	author_name: boris.name, author: boris)

Book.create(name: 'Cyrano de Bergerac', published_date: "1897-12-28 00:00:00", 
	description: "Cyrano de Bergerac est l'une des pièces les plus populaires du théâtre français, et la plus célèbre de son auteur, Edmond Rostand", 
	author_name: edmon.name, author: edmon)
Book.create(name: 'L Aiglon', published_date: "1900-01-22 00:00:00", 
	description: "L’Aiglon est un drame d'Edmond Rostand écrit en 1900", 
	author_name: edmon.name, author: edmon)
Book.create(name: 'Recette de la seed en 3 manières', published_date: "2001-01-22 00:00:00", 
	description: "Livre Bizard", 
	author_name: edmon.name, author: edmon)

Book.all.each do |book|
	book.page_number = rand(50..900)
	book.save
	p "book have Pages"
end 