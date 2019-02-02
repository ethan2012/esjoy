require "esjoy/version"

module Esjoy
	# extend ActiveSupport::Concern
  def self.hello
  	p 'hello there'
  end

  def esjoy_data
  	p 'test first method'
  end
end

require "active_model/callbacks"
ActiveModel::Callbacks.include(Esjoy::Model)

ActiveSupport.on_load(:active_record) do
  extend Esjoy::Model
end
