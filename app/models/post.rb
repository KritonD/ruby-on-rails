class Post < ActiveRecord::Base
   belongs_to :user
   validates :title, presence: true

   def word_count
      self.body.split(" ").length
   end

end