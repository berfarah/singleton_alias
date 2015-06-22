require 'singleton_alias/version'

# Extend SingletonAlias to get this method
module SingletonAlias
  def self.included(klass)
    klass.extend ClassMethods
  end

  # Turned into class methods upon inclusion
  module ClassMethods
    def singleton_alias(*syms)
      syms.each do |name|
        define_singleton_method(name) { |*args| new(*args).send(name) }
      end
    end
  end
end
