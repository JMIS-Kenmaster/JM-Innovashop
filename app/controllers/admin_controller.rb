class AdminController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!
  def index
    # Your index action logic here
  end
end
       