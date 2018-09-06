class Pessoa < ApplicationRecord
    has_one :funcionario
    accepts_nested_attributes_for :funcionario
end
