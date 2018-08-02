class Post < ActiveRecord::Base
      validates :title, :body, presence: true
      validates :title, uniqueness:true
      
      #belongs_to :user
      ## is not needed right now, but will be later - would be used to search over the user that made teh changes.
      
      def self.really_long_posts
          Post.where("length(body) > 10").count
      
      end
      
      def length_of_post
         "#{body.split(" ").length} words"
      end
      
     def length_of_title
         "#{title.split(" ").length} words"
     end
     
     def body_char
           self.body.length
     end
     
      
end
