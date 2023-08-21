class Genesecundario < ApplicationRecord
  belongs_to :genealvo
  belongs_to :geneassociado, class_name: "Genealvo" 
end