class Article < ActiveRecord::Base
    include Base

    has_many :texts
    has_many :images
    
    def all_texts_and_images
        (texts.entries + images.entries).sort_by{|asset| asset[:display_order]}
    end
    
    def published?
        created_at < DateTime.now
    end
        
end
