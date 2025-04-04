class Genealvo < ApplicationRecord
    has_many :genesecundarios
    has_many :geneassociados, through: :genesecundarios
    has_many :repositorios

    belongs_to :usuario
end
