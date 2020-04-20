require 'pry'

class EvenCreator
  attr_accessor :title, :date, :duration, :attendees

  def get_title
    puts "Salut, tu veux créer un événement ? Cool ! "
    puts "Commençons. Quel est le nom de l'événement ?"
    print "> "
    @title = gets.chomp
  end
  
  def get_date
    puts "Super. Quand aura-t-il lieu ?"
    print "> "
    @date = gets.chomp
  end

  def get_duration
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print "> "
    @duration = gets.chomp
  end

  def get_attendees
    puts "Génial. Qui va participer ? Balance leurs e-mails"
    print "> "
    @attendees = gets.chomp
    puts "Super, c'est noté, ton évènement a été créé !"
  end
end


first = EvenCreator.new
