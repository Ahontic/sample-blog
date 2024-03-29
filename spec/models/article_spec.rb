require "rails_helper"

describe Article do

describe "validations" do
  it { should validate_presence_of :title }
  it { should validate_presence_of :text }
  it { should validate_length_of(:title).is_at_most(140) }
  it { should validate_length_of(:text).is_at_most(4000) }
end

  describe "associations" do
    it { should have_many :comments }
end

describe "#subject" do
    it "returns the article title" do

      # создаем объект article хитрым способом
      # arrange,act
      article = create(:article, title: 'Lorem Ipsum')

      # assert, проверка
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

  describe "#last_comment" do
    it "returns last comment" do
    # создаем статью, но в этот раз с комментарием
    article = create(:article_with_comments)

    # проверка
    expect(article.last_comment.body).to eq "comment body 3"
  end
end
end