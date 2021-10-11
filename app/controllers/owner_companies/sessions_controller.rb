# frozen_string_literal: true

class OwnerCompanies::SessionsController < Devise::SessionsController
  
  include Accessible
  skip_before_action :check_resources, only: :destroy
end
