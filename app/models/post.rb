class Post < ApplicationRecord

include Sluggable
# validates :name, presence: { message: " ne doit pas être vide"}
# validates :name, format: { with: /\A[a-zA-Z]+\z/ } /tous caractères alphanumériques
# validates :name, length: { in: 3..20 } entre 3 et 20 caractères
# validates :name, uniqueness: true si le titre n'a pas déjà été pris
# validates :name, acceptance: true si une case a été cochée
# validates :name, confirmation: true pour les mots de passe et confirmation de mot de passe avec un autre champs password_confirmation
# validates_with NameValidator
# validates :name, name: { message: 'Oups erreur' }
# validates :content, name: true

validates :slug, format: { with: /\A[a-z0-9\-]+\z/ }, uniqueness: true



  def as_json(options =  nil)
    super(only: [:name, :created_at, :id])
  end

end
