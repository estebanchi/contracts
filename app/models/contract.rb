class Contract < ApplicationRecord
  DIVISION_LIST = ['ATOMO -47,7 KG (solo para mujeres)', 'PAJA -52,2 KG', 'MOSCA -56,7 KG', 'GALLO -61,2 KG',
                   'PLUMA -65,8 KG', 'LIGERO -70,3 KG', 'WELTER -77,1 KG', 'MEDIO -83,9 KG',
                   'SEMICOMPLETO -93 KG', 'COMPLETO -119,9 KG', 'SUPERCOMPLETO +120 KG'].freeze
  validates_presence_of :contracted_name, :contracted_id, :contracted_address, :contracted_division,
                        :contract_validity
  validates :contracted_id, uniqueness: true
  has_one_attached :contracted_signature
end
