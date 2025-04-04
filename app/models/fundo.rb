class Fundo < ApplicationRecord
    has_many :linfundorepositorios
    has_many :linfundos

    belongs_to :usuario
    
end
