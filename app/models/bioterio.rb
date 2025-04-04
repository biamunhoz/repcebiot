class Bioterio < ApplicationRecord
    has_many :repositorios
    belongs_to :usuario
    
def full_bioterio
    "#{local} - #{unidade} - #{responsavel}"
end

end
