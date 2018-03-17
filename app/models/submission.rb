class Submission < ApplicationRecord
    acts_as_votable
    belongs_to :user
    has_many :comments
   
    validates :post, presence: true
    # validates :post, format: { with: URI.regexp }, if: 'post.present?'
    
    validates :post, length: {
  minimum: 50,
  tokenizer: lambda { |str| str.scan(/\w+/) }
}
def self.search(search)
  where("title LIKE ? OR post LIKE ?", "%#{search}%", "%#{search}%") 
end
    
end
