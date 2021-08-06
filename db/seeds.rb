# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p = Post.create(title: 'React',
                content: 'React is a free and open-source front-end JavaScript library for building user interfaces or UI components. It is maintained by Facebook and a community of individual developers and companies. React can be used as a base in the development of single-page or mobile applications')
p.comments.create(name: 'Aella', email: 'aella@mail.com', message: 'React is a cool front-end JavaScript library')
Project.create(title: 'test', description: 'Very cool project', github_url: 'github.com',
               image_url: 'https://via.placeholder.com/150', stacks: %w[react rails ruby])
