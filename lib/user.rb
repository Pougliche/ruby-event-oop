require "pry"

class User
    attr_accessor :email, :age      #attr_accessor > soit faire une ligne par attribut, soit séparer d'une virgule et d'un espace
    @@all_users=Array.new           #créer un array avant les méthodes, et lui donner un nom de variable(double arobase pour le self)
    @@users=Array.new

    def initialize (email_to_save,age)          #on ajoute les attributs que l'on va demander aux news users
    @email = email_to_save
    @age = age
    @@all_users<<email_to_save                  #on ajoute ici les emails dans l'array
    @@users<<self

    end

    def self.all                                #on utilise la commande self pour retourner l'array contenant les attributs des instances
    return @@all_users                          #on return l'array
    end

    def self.find_by_email(email_to_save)
    return @@users.find{|user| user.email==email_to_save} 
    end

end

#binding.pry 
#puts "end of file"

