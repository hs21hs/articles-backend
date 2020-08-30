require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'validation tests' do

    it 'ensures a_id column presence' do
      article = Article.new({likes:2}).save
      expect(article).to eq(false)
    end

    it 'ensures likes column presence' do
      article = Article.new({a_id:20}).save
      
      expect(article).to eq(false)
    end

    it 'ensures article can be created when likes, and a_id column are present' do
      article = Article.new({a_id:20, likes:0}).save
      article2 = Article.new({a_id:20, likes:0}).save

      expect(article).to eq(true)
    end

    it 'ensures article a_id column must be unique ' do
      article = Article.new({a_id:12, likes:2}).save
      article2 = Article.new({a_id:12, likes:0}).save

      expect(article).to eq(true)
      expect(article2).to eq(false)
    end

  end

end
