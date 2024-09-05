class CommentPolicy
  class Scope
    def initialize(user, scope, options: {})
      @user = user
      @scope = scope
      @options = options
    end

    def resolve
      raise NotImplementedError
    end
  end

  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    raise NotImplementedError
  end

  def show?
    raise NotImplementedError
  end

  def create?
    raise NotImplementedError
  end

  def update?
    raise NotImplementedError
  end

  def destroy?
    raise NotImplementedError
  end
end
