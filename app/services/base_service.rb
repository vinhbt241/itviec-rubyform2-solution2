class BaseService
  def self.call(*args)
    new(*args).call
  end

  def call
    raise NoMethodError, "call method must be implemented"
  end
end