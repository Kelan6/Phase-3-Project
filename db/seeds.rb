puts "🌱 Seeding spices..."

Movie.create(title: "Inception", thumbnail_url: "https://www.imdb.com/title/tt1375666/mediaviewer/rm3426651392/?ref_=tt_ov_i", director: "Christopher Nolan", budget: 160.0, box_office: 836.8, description: nil)
Movie.create(title: "Avatar", thumbnail_url: "https://en.wikipedia.org/wiki/File:Avatar_(2009_film)_poster.jpg", director: "James Cameron", budget: 237.0, box_office: 2847.0, description: nil)
Movie.create(title: "Phantom Menace", thumbnail_url: "https://upload.wikimedia.org/wikipedia/en/thumb/4/40/Star_Wars_Phantom_Menace_poster.jpg/220px-Star_Wars_Phantom_Menace_poster.jpg", director: "George Lucas", budget: 115.0, box_office: 1027.0, description: nil)
Movie.create(title: "Nausicaä of the Valley of the Wind", thumbnail_url: "https://upload.wikimedia.org/wikipedia/en/thumb/b/bc/Nausicaaposter.jpg/220px-Nausicaaposter.jpg", director: "Hayao Miyazaki", budget: 0.758, box_office: 14.3, description: nil)
Movie.create(title: "Gladiator", thumbnail_url: "https://upload.wikimedia.org/wikipedia/en/thumb/f/fb/Gladiator_%282000_film_poster%29.png/220px-Gladiator_%282000_film_poster%29.png", director: "Ridley Scott", budget: 103.0, box_office: 460.5, description: nil)
Movie.create(title: "Blade Runner", thumbnail_url: "https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Blade_Runner_%281982_poster%29.png/220px-Blade_Runner_%281982_poster%29.png", director: "Ridley Scott", budget: 30.0, box_office: 41.6, description: nil)
Movie.create(title: "Spirited Away", thumbnail_url: "https://upload.wikimedia.org/wikipedia/en/thumb/d/db/Spirited_Away_Japanese_poster.png/220px-Spirited_Away_Japanese_poster.png", director: "Hayao Miyazaki", budget: 19.2, box_office: 395.8, description: nil)
Movie.create(title: "Monster's Inc", thumbnail_url: "https://upload.wikimedia.org/wikipedia/en/6/63/Monsters_Inc.JPG", director: "Pete Docter", budget: 115.0, box_office: 577.4, description: nil)
Movie.create(title: "Shrek", thumbnail_url: "https://upload.wikimedia.org/wikipedia/en/7/7b/Shrek_%282001_animated_feature_film%29.jpg", director: "Andrew Adamson", budget: 60.0, box_office: 487.9, description: nil)
Movie.create(title: "Moonrise Kingdom", thumbnail_url: "https://upload.wikimedia.org/wikipedia/en/4/4f/Moonrise_Kingdom_FilmPoster.jpeg", director: "Wes Anderson", budget: 16.0, box_office: 68.3, description: nil)
Movie.create(title: "Wolf of Wall Street", thumbnail_url: "https://upload.wikimedia.org/wikipedia/en/thumb/d/d8/The_Wolf_of_Wall_Street_%282013%29.png/220px-The_Wolf_of_Wall_Street_%282013%29.png", budget: 100.0, box_office: 392.0, description: nil)
Movie.create(title: "Taken", thumbnail_url: "https://en.wikipedia.org/wiki/File:Taken_film_poster.jpg", budget: 25.0, box_office: 226.8, description: nil)
Movie.create(title: "Apocalypse Now", thumbnail_url: "https://upload.wikimedia.org/wikipedia/en/c/c2/Apocalypse_Now_poster.jpg", budget: 31.0, box_office: 150.0, description: nil)

puts "✅ Done seeding!"
