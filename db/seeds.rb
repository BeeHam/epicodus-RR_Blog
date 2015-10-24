# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "Admin User", email: "admin@example.com", password: "password", admin: true)

Post.create(title: "What's Wrong With Kids Today", content: "One bacon ipsum dolor amet chuck rump sirloin fatback kielbasa. Ball tip flank sirloin, kevin filet mignon jowl frankfurter tri-tip beef alcatra porchetta. Pork loin capicola ham kevin, turducken swine tri-tip drumstick. Flank pork chop turducken beef, doner landjaeger capicola. Rump landjaeger ribeye brisket boudin corned beef beef ribs, beef fatback strip steak. Ground round cupim corned beef jowl boudin filet mignon swine rump capicola chuck sirloin spare ribs beef ribs shankle kevin. Biltong cupim pork chop, pork pig shoulder porchetta.", author: "Nom DeGuerre")

Post.create(title: "What's Wrong With Old People Today", content: "Two bacon ipsum dolor amet chuck rump sirloin fatback kielbasa. Ball tip flank sirloin, kevin filet mignon jowl frankfurter tri-tip beef alcatra porchetta. Pork loin capicola ham kevin, turducken swine tri-tip drumstick. Flank pork chop turducken beef, doner landjaeger capicola. Rump landjaeger ribeye brisket boudin corned beef beef ribs, beef fatback strip steak. Ground round cupim corned beef jowl boudin filet mignon swine rump capicola chuck sirloin spare ribs beef ribs shankle kevin. Biltong cupim pork chop, pork pig shoulder porchetta.", author: "Nom DePlume")

Post.create(title: "What's Wrong With Humans Today", content: "Three bacon ipsum dolor amet chuck rump sirloin fatback kielbasa. Ball tip flank sirloin, kevin filet mignon jowl frankfurter tri-tip beef alcatra porchetta. Pork loin capicola ham kevin, turducken swine tri-tip drumstick. Flank pork chop turducken beef, doner landjaeger capicola. Rump landjaeger ribeye brisket boudin corned beef beef ribs, beef fatback strip steak. Ground round cupim corned beef jowl boudin filet mignon swine rump capicola chuck sirloin spare ribs beef ribs shankle kevin. Biltong cupim pork chop, pork pig shoulder porchetta.", author: "Nom DeChat")
