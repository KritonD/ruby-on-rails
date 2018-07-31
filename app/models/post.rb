class Post < ActiveRecord::Base
      validates :title, :body, presence: true
      validates :title, uniqueness:true
      
      belongs_to :user
      
      def length_of_post
         "#{body.split(" ").length} words"
          
      end
      
     def length_of_title
         "#{title.split(" ").length} words"
          
     end
      
end
