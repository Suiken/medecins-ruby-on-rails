class IndexController < ApplicationController
    def index
        render :action => 'index'
    end
  
    def medecins
        if params[:departement] != nil then
            @medecins = Medecin.find(:all, :conditions => ["departement = ?", params[:departement]]).sort_by{|medecin| [medecin.nom, medecin.prenom]}
        elsif params[:nom] != nil then
            nom = "%" + params[:nom] + "%"
            @medecins = Medecin.find(:all, :conditions => ["nom like ?", nom]).sort_by{|medecin| [medecin.nom, medecin.prenom]}
        else
            @medecins = Medecin.all.sort_by{|medecin| [medecin.nom, medecin.prenom]}
        end
        render :action => 'medecins'
    end
  
    def departements
        @medecins = Medecin.all.sort_by{|medecin| medecin.departement}.uniq{|medecin| medecin.departement}
        render :action => 'departements'
    end
  
    def nom
        render :action => 'nom'
    end
end