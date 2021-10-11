module Accessible
    extend ActiveSupport::Concern
    included do
        before_action :check_resources
    end

    protected

    def check_resources
        if owner_company_signed_in?
            flash.clear
            redirect_to(root_path) and return
        elsif user_signed_in?
            flash.clear
            redirect_to(root_path) and return
        end
    end
end