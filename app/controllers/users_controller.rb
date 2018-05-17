class UsersController < ApplicationController
  def users
  	@users=User.all
  end

  def trip_transactions
  end

  def balance_loads
  end

  def history_loads
  end

  def index
  	
  end
end
