# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
SiezureReport.delete_all
Drug.delete_all
Subject.delete_all
Vehicle.delete_all
Audit.delete_all


users = [
	User.create({email: 'admin@hidta.com', password: 'password', fname: 'Agent', lname: 'Smith', role: 'admin'}),
	User.create({email: 'field@hidta.com', password: 'password', fname: 'Burt', lname: 'Macklin', role: 'field'}),
	User.create({email: 'entry@hidta.com', password: 'password', fname: 'Michael', lname: 'Scott', role: 'entry'})]

users.each do |u|
	puts "\nCreated User\nemail: #{u.email}\tpassword: #{u.password}\nrole: #{u.role}\n"
end

SiezureReport.create({taskforce: 'Jump Street Squad', agency: 'The Justice League', casenum: '1'})

SiezureReport.create({taskforce: 'The French Connectors', agency: 'The Justice League', casenum: '2'})

SiezureReport.create({taskforce: 'Super Sniffers', agency: 'The Fantastic Four', casenum: '323'})

SiezureReport.create({taskforce: 'The A team', agency: 'The Justice League', casenum: '45'})

SiezureReport.create({taskforce: 'Brooklyn Busters', agency: 'The Avengers', casenum: '357'})

Drug.create({type_of_drug: 'Happy Powder', amount: '23' , purchase_price: '100' , currency: 'money' , siezure_report_id: '1'})

Drug.create({type_of_drug: 'Cocaine', amount: '23' , purchase_price: '100' , currency: 'cash' , siezure_report_id: '2'})

Drug.create({type_of_drug: 'Soda', amount: '3' , purchase_price: '100' , currency: 'beads' , siezure_report_id: '3'})

Drug.create({type_of_drug: 'Coke', amount: '2' , purchase_price: '100' , currency: 'money' , siezure_report_id: '4'})

Drug.create({type_of_drug: 'Pepsi', amount: '357' , purchase_price: '100' , currency: 'money' , siezure_report_id: '5'})

Drug.create({type_of_drug: 'Heroine', amount: '847' , purchase_price: '100' , currency: 'Euros' , siezure_report_id: '1'})

Drug.create({type_of_drug: 'Adrenochrome', amount: '234' , purchase_price: '100' , currency: 'Pesos' , siezure_report_id: '1'})

Subject.create({name: 'Chewy Baca', ssn: '555' , gender: 'male' , city: 'Tattoine' , siezure_report_id: '1'})

Subject.create({name: 'Han Solo', ssn: '505' , gender: 'male' , city: 'Tattoine' , siezure_report_id: '1'})

Subject.create({name: 'Johnny McJimjohn', ssn: '525' , gender: 'unknown' , city: 'Albuquerque' , siezure_report_id: '2'})

Subject.create({name: 'Mary Jane', ssn: '554' , gender: 'female' , city: 'Springfield' , siezure_report_id: '3'})

Subject.create({name: 'The Joker', ssn: '567' , gender: 'Male' , city: 'Santa Fe' , siezure_report_id: '4'})

Subject.create({name: 'Harry', ssn: '009' , gender: 'male' , city: 'Garyville' , siezure_report_id: '5'})

Subject.create({name: 'Larry', ssn: '007' , gender: 'male' , city: 'Garyville' , siezure_report_id: '5'})

Subject.create({name: 'Barry', ssn: '123' , gender: 'male' , city: 'Garyville' , siezure_report_id: '5'})

Vehicle.create({make: 'Millenium', model: 'falcon', year: '12', color: 'Silver', siezure_report_id: '1'})
