require 'rails_helper'

# describe 'string' hoac 1 class deu duoc
# describe 'Text' do
describe Image do

  describe 'relationships' do
    let(:a_text) { Image.new }

    it 'belongs to an article (test using shoulda-matchers gem)' do
      expect(a_text).to belong_to(:article)
    end

    # it 'belongs to an article (using metadata)' do
    #   relationship = Text.reflections['article']
    #   expect(relationship).to be_kind_of ActiveRecord::Reflection::BelongsToReflection
    # end
  end

end
