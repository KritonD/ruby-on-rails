class Post < ActiveRecord::Base
   def word_count
      self.body.split(" ").length
   end
   
end