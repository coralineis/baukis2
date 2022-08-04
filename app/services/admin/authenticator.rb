class Admin::Authenticator
  def initialize(administrator)
    @administrator = administrator
  end
  
  def authenticate(raw_password)
    @administrator &&
      @administrator.hashed_password &&
      @administrator.start_date <= Date.today &&
      (@administrator.end_date.nil? || @administrator.end_date > Date.today) &&
      BCrypt::Password.new(@administrator.hashed_password) == raw_password
  end
end
