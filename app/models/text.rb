class Text < ActiveRecord::Base
  include Base
  
  belongs_to :article
end
