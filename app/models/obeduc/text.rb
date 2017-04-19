class Obeduc::Text
  include Mongoid::Document
  field :codigo_texto, type: String
  field :texto_full, type: String

  store_in collection: "obeduc_text", database: "teste_mdl_development"
end
