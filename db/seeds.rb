# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

admin = User.create({email: 'admin@admin.com', password: 'password'})

puts "Created User\nemail: #{admin.email}\tpassword: #{admin.password}\n"

Siezure_report.create({taskforce: 'Jump Street Squad', agency: 'The Justice League', casenum: '1'})

Siezure_report.create({taskforce: 'The French Connectors', agency: 'The Justice League', casenum: '2'})

Siezure_report.create({taskforce: 'Super Sniffers', agency: 'The Fantastic Four', casenum: '323'})

Siezure_report.create({taskforce: 'The A team', agency: 'The Justice League', casenum: '45'})

Siezure_report.create({taskforce: 'Brooklyn Busters', agency: 'The Avengers', casenum: '357'})

Siezure.create({drug_type: 'Happy Powder', amount: '23' , price: '100' , currency: 'money' , siezure_report_id: '1')}

Siezure.create({drug_type: 'Cocaine', amount: '23' , price: '100' , currency: 'cash' , siezure_report_id: '2')}

Siezure.create({drug_type: 'Soda', amount: '3' , price: '100' , currency: 'beads' , siezure_report_id: '3')}

Siezure.create({drug_type: 'Coke', amount: '2' , price: '100' , currency: 'money' , siezure_report_id: '4')}

Siezure.create({drug_type: 'Pepsi', amount: '357' , price: '100' , currency: 'money' , siezure_report_id: '5')}

Siezure.create({drug_type: 'Heroine', amount: '847' , price: '100' , currency: 'Euros' , siezure_report_id: '1')}

Siezure.create({drug_type: 'Adrenochrome', amount: '234' , price: '100' , currency: 'Pesos' , siezure_report_id: '1')}

Subject.create({name: 'Chewy Baca', ssn: '555' , gender: 'male' , city: 'Tattoine' , seizure_report_id: '1')}

Subject.create({name: 'Han Solo', ssn: '505' , gender: 'male' , city: 'Tattoine' , seizure_report_id: '1')}

Subject.create({name: 'Johnny McJimjohn', ssn: '525' , gender: 'unknown' , city: 'Albuquerque' , seizure_report_id: '2')}

Subject.create({name: 'Mary Jane', ssn: '554' , gender: 'female' , city: 'Springfield' , seizure_report_id: '3')}

Subject.create({name: 'The Joker', ssn: '567' , gender: 'Male' , city: 'Santa Fe' , seizure_report_id: '4')}

Subject.create({name: 'Harry', ssn: '009' , gender: 'male' , city: 'Garyville' , seizure_report_id: '5')}

Subject.create({name: 'Larry', ssn: '007' , gender: 'male' , city: 'Garyville' , seizure_report_id: '5')}

Subject.create({name: 'Barry', ssn: '123' , gender: 'male' , city: 'Garyville' , seizure_report_id: '5')}

Vehicle.create([make: 'Millenium', model: 'falcon', year: '12', color: 'Silver', seizure_report_id: '1')}
