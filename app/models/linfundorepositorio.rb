class Linfundorepositorio < ApplicationRecord
  belongs_to :repositorio
  belongs_to :linhagem
  belongs_to :fundo
end
