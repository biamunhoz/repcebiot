class Linhagem < ApplicationRecord
    has_many :linfundorepositorios

    belongs_to :genotipo
    belongs_to :bioterio
    belongs_to :origem
    #belongs_to :fenotipo
    belongs_to :genealvo
    belongs_to :usuario
  
    has_many :linfundos, inverse_of: :linhagem, dependent: :destroy
    accepts_nested_attributes_for :linfundos, allow_destroy: true, reject_if: :all_blank

    has_many :linprimers, inverse_of: :linhagem, dependent: :destroy
    accepts_nested_attributes_for :linprimers, allow_destroy: true, reject_if: :all_blank

    validates :linfundos, presence: { message: "Por favor, indique ao menos um fundo para esta linhagem." }

    validate :require_two_options

    def require_two_options
        errors.add(:base, "Por favor, indique ao menos dois primers para esta linhagem.") if linprimers.size < 2
    end 
end
