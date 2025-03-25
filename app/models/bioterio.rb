class Bioterio < ApplicationRecord
    has_many :repositorios

def full_bioterio
    "#{local} - #{unidade} - #{responsavel}"
end

end
