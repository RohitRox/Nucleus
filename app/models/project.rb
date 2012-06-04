class Project < ActiveRecord::Base
  has_and_belongs_to_many :users
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  accepts_nested_attributes_for :users, :allow_destroy => true
  validates_presence_of :name, :desc, :cost, :deadline, :category
  has_many :tasks
end
