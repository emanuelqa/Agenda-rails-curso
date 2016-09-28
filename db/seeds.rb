# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Criando os Tipos .......'
Kind.create([{description: 'Amigo'}, {description: 'Trabalho'}, {description: 'Conhecido'}])
puts 'Criando os Tipos .......[OK]'

puts 'Criando os Contatos .......'
10.times do |t|
Contact.create(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		rmk: Faker::Lorem.paragraph([1..5].sample),
		kind: Kind.all.sample
	)
end
puts 'Criando os Contatos .......[OK]'

puts 'Criando os Endereço .......'
10.times do |t|
Address.create(
		street: Faker::Address.street_name,
		city: Faker::Address.city,
		state: Faker::Address.state,
		contact: Contact.all.sample
	)
end
puts 'Criando os Endereço .......[OK]'

puts 'Criando os Telefone .......'
10.times do |t|
Phone.create(
		phone: Faker::PhoneNumber.phone_number,
		contact: Contact.all.sample
	)
end
puts 'Criando os Telefone .......[OK]'