class Post < ApplicationRecord
    
    extend FriendlyId
    friendly_id :tilte, use: :slugged

    validates_presence_of :tilte
    has_rich_text :content
    has_many :comments
    belongs_to :user



end
