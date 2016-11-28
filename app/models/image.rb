class Image < ActiveRecord::Base
  include Base
  
  belongs_to :article
  
end
