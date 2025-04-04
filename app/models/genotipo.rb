class Genotipo < ApplicationRecord
    has_many :repositorios

    belongs_to :usuario
end
