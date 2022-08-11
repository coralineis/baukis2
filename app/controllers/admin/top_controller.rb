class Admin::TopController < Admin::Base
  skip_before_action :authorize

  def index
    if current_administrator
      render :dashboard
    else
      render :index
    end
  end
end
