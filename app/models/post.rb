class Post < ActiveRecord::Base
   belongs_to :user

   def word_count
      self.body.split(" ").length
   end

end