class SightingSerializer
    def initialize(sighting_object)
        @sighting = sighting_object
    end


        def to_serialized_json
            options = { #giving option by creating a options hash and passing it in! createing this function clears your controller wfrom excess logic
              include: {
                bird: {
                  only: [:name, :species]
                },
                location: {
                  only: [:latitude, :longitude]
                }
              },
              except: [:updated_at],
            }
            @sighting.to_json(options)
          end
    #     @sighting.to_json(:include => {
    #       :bird => {:only => [:name, :species]},
    #       :location => {:only => [:latitude, :longitude]}
    #     }, :except => [:updated_at])
    # end
     
end