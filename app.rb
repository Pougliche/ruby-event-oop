# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
#require 'bundler'
#Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

brenda = User.new("brenda@gmail.com", 25)
brandon = User.new("brandon@gmail.com", 30)
raspoutine = User.new("raspoutine@kgb.ru", 95)

user_1 = User.find_by_email("raspoutine@kgb.ru")
puts "Voici l'age du User trouvé : #{user_1.age}"
