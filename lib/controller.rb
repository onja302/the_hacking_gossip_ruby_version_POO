require 'gossip'
require 'view'

class Controller
    def initialize
        @view = View.new
    end


    def create_gossip
        tab = @view.create_gossip
        gossip = Gossip.new(tab[0], tab[1])
        gossip.save
        puts "gossip save"
    end

    def index_gossips
        potin = Gossip.all
        @view.index_gossips(potin)

    end

    def remove
        potin_remove = @view.remove
        Gossip.remove(potin_remove)
        puts "effacer de la base"
    end
end

my_gossip = Gossip.new("Alinah", "I don't know what is :-(")