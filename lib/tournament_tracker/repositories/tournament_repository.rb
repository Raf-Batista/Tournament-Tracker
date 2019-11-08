class TournamentRepository < Hanami::Repository
    associations do
        belongs_to :organizer
    end 

    def find_with_organizer(id)
        aggregate(:organizer).where(id: id).map_to(Organizer).one
    end
end
