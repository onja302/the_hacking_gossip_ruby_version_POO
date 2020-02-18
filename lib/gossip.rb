require 'json'

class Gossip
    attr_accessor :author, :content

    def initialize(author, content)
        @content = content
        @author = author
    end

    def save
        read = File.read("./db/gossip.json")
        hash = JSON.parse(read)
        hash[@author] = @content
        File.write("./db/gossip.json", hash.to_json)
    end 

    def self.all
        read = File.read("./db/gossip.json")
        all_gossips = JSON.parse(read)
        return all_gossips
    end
    
    def self.remove(array)
        read = File.read("./db/gossip.json")
        hash = JSON.parse(read)
        result = Hash.new
        hash.each do |cle,valeur|
            next if cle == array[0] || valeur == array[1]
            result[cle] = valeur
        end
        File.write("./db/gossip.json", result.to_json)
    end
end

