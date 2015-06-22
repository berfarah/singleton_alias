require 'spec_helper'

describe SingletonAlias do
  before :all do
    ExampleKlass = Struct.new(:name, :email) do
      include SingletonAlias
      singleton_alias :name_and_email

      def name_and_email
        "#{name} <#{email}>"
      end

      def non_singleton; end
    end
  end

  it 'should create singleton methods for instance methods' do
    name  = 'Person'
    email = 'person@example.org'

    expect(
      ExampleKlass.name_and_email(name, email)
    ).to eq(ExampleKlass.new(name, email).name_and_email)
  end

  it "shouldn't create singleton methods for any other methods" do
    expect(ExampleKlass).not_to respond_to :not_singleton
  end

  it 'should have a version number' do
    expect(SingletonAlias::VERSION).not_to be nil
  end
end
