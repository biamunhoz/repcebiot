class Repositorio < ApplicationRecord
  belongs_to :genotipo
  belongs_to :bioterio
  belongs_to :origem
  belongs_to :fenotipo
  belongs_to :genealvo
end
