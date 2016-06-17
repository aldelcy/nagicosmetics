# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

prdfamily = Prdfamily.create([{name:'Skin Care', shortname:'skincare'},
							  {name:'Make Up', shortname:'makeup'},
							  {name:'Accessories', shortname:'accessories'}])

categories = Category.create([{name:'Lips', shortname:'lips', prdfamily_id:2,},
							  {name:'Eyes', shortname:'eyes', prdfamily_id:2,},
							  {name:'Face', shortname:'face', prdfamily_id:2,}])
