# typed: true

class ActiveRecord::Base
  include ActiveStorage::Attached::Model
  extend ActionText::Attribute::ClassMethods
end

class ActiveRecord::Relation
  include ::ActiveRecord::SignedId::ClassMethods
end
