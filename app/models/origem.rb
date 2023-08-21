class Origem < ApplicationRecord
    has_many :repositorios

def full_origem
    "#{instituicao} - #{sigla}"
end

end
