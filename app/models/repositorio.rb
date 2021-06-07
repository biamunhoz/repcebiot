class Repositorio < ApplicationRecord
  belongs_to :genotipo
  belongs_to :bioterio
  belongs_to :origem
  belongs_to :fenotipo
  belongs_to :genealvo

  has_many :primerdorepositorios, inverse_of: :repositorio
  accepts_nested_attributes_for :primerdorepositorios, allow_destroy: true, reject_if: :all_blank

end
