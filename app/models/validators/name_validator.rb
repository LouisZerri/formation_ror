class NameValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    if value.nil? || value.length != 5
      message = options[:message] || ' doit avoir cinq caractères'
      record.errors.add(attribute, message)
    end
  end

end
