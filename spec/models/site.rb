class Site
  include Mongoid::Document

  field :name

  if Mongoid::Compatibility::Version.mongoid7_or_newer?
    has_many :users, inverse_of: :site, order: :email.desc, counter_cache: true
  else
    has_many :users, inverse_of: :site, order: :email.desc
  end  

  validates :name, presence: true, uniqueness: true
end
