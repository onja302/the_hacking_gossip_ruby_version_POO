class View


    def create_gossip
        puts "Laissez-y votre commentaire :-)!"
        contents = gets.chomp
        puts "l'auteur!?"
        auteur = gets.chomp
        return [auteur,contents]
    end

    def remove
        print "Auteur du gossip: "
        rem = gets.chomp
        print "content: "
        remv = gets.chomp
        return [rem,remv]
    end

    def index_gossips(gossips)
        puts "les gossips en base"
        gossips.each{|c,a| puts "#{c}: #{a}"}
    end
end

