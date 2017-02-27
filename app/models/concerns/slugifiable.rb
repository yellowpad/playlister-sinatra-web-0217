require 'pry'

module Slugifiable
  module InstanceMethods
    def slug
      self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      self.find {|i| i.slug == slug} #looks in all Class instances and returns the instance where
    end
  end
end
