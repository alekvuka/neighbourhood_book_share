class Community < ActiveRecord::Base
  has_many :books
  has_many :readers

  def slug
    name.downcase.tr(' ', '-')
  end

  def self.find_by_slug(slug)
    Community.all.find { |community| community.slug == slug }
  end
end
