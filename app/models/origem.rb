class Origem < ApplicationRecord
    has_many :repositorios
    belongs_to :usuario

def full_origem
    "#{instituicao} - #{sigla}"
end

end
