require 'rails_helper'

describe Article do
  describe 'relationships' do
    let(:an_article) { Article.new }

    it 'has many texts' do
      expect(an_article).to have_many(:texts)
    end

    it 'has many images' do
      expect(an_article).to have_many(:images)
    end
  end

  describe '#all_texts_and_images' do
    let!(:article_1) { Article.create() }
    let!(:article_1_text) { Text.create(article: article_1) }
    let!(:article_1_image_1) { Image.create(article: article_1) }
    let!(:article_1_image_2) { Image.create(article: article_1) }

    let!(:article_2) { Article.create() }
    let!(:article_2_text) { Text.create(article: article_2) }
    let!(:article_2_image_1) { Image.create(article: article_2) }

    it 'returns all text and images of the article' do
      results = article_1.all_texts_and_images
      expect(results.length).to eq(3)
      expect(results).to include(article_1_text)
      expect(results).to include(article_1_image_1)
      expect(results).to include(article_1_image_2)
    end
  end

  describe '#published?' do
    context 'when created_at < now' do # context = ngu*~ canh, nhin vo doc test cho de hieu, khi nao test cung 1 method/function nhung khac condition thi nen dung context
      let(:now) { DateTime.now }
      let(:article) { Article.new(created_at: now - 1.day) }

      it 'returns true' do
        expect(article.published?).to eq(true)

        # the same as
        expect(article.published?).to be_truthy
      end
    end

    context 'when created_at >= now' do
      let(:now) { DateTime.now }
      let!(:article) { Article.new(created_at: now + 1.day) }

      it 'returns false' do
        expect(article.published?).to eq(false)

        # the same as
        expect(article.published?).to be_falsy
      end
    end
  end
end
