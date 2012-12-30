class Medecin < ActiveRecord::Base
  attr_accessible :nom, :prenom, :adresse, :tel, :specialiteComplementaire, :departement
  self.table_name = "Medecin"
end
