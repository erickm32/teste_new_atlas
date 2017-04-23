class Obeduc::Color
  include Mongoid::Document
  resourcify
  include Mongoid::Timestamps
  field :hex_color, type: String
  field :tag, type: String
end
