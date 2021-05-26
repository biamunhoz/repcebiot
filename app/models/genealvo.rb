class Genealvo < ApplicationRecord
    has_many :genesecundarios
    has_many :geneassociados, through: :genesecundarios
end
