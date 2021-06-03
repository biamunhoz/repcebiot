class Bioterio < ApplicationRecord
    has_many :repositorios

def full_bioterio
    "#{local} - #{unidade}"
end

end
