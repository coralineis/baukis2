class Staff::AccountsController < Staff::Base
  def show
    @staff_member = current_staff_member
  end
  
end
