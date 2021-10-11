# frozen_string_literal: true

class OwnerCompanies::RegistrationsController < Devise::RegistrationsController
  include Accessible
  skip_before_action :check_resources, except: [:new, :create]
end
