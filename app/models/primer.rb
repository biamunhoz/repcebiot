class Primer < ApplicationRecord
    has_many :primerdorepositorios
    has_many :linprimers
    
    belongs_to :usuario
end
