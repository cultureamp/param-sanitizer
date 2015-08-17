class ParamSanitizer
  include Singleton

  def execute(params = {})
    case params
    when Hash
      sanitize_hash(params)
    when Array
      sanitize_array(params)
    when String
      sanitize_string(params)
    end
  end


  private

  def sanitize_hash(list)
    list.each do |key, value|
      list[key] = execute(value)
    end
  end

  def sanitize_array(list)
    list.each_index do |index|
      list[index] = execute(list[index])
    end
  end

  def sanitize_string(string)
    ActionController::Base.helpers.sanitize(string)
  end

end
