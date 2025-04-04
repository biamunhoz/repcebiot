class Usuario < ApplicationRecord
    has_many :tipo_vinculos
    
    has_many :inscricaos, :class_name => 'Inscricao'
    has_many :agendas, :through => :inscricaos

    has_many :permissaos, :class_name => 'Permissao'
    has_many :perfils, :through => :permissaos

    has_many :permissaos, :class_name => 'Permissao'
    has_many :salas, :through => :permissaos

    has_many :logs

    has_many :linhagens
    has_many :bioterios
    has_many :fundos
    has_many :genealvos
    has_many :genotipos
    has_many :origems
    has_many :primers

end
