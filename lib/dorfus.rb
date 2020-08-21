class Dorfus
  include HTTParty
  base_uri 'fr.dofus.dofapi.fr'

   #initialisation
    def initialize(type,key)
        @type = type
        @key = key
    end
  
    #methode qui récupère les monstres
    def get_monsters
        self.class.get("/monsters?filter[where][type]=#{@type}")
    end

    #methode enregistrant dans un fichier JSON
    def save_as_JSON(monsters)
        File.open("db/#{@key}.json","w") do |f|
            f.write(monsters.to_json)
        end
    end
    
    def perform
        monsters = get_monsters.parsed_response
        save_as_JSON(monsters)
    end
end