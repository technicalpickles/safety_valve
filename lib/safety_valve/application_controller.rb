module SafetyValve
  module ApplicationController
    def self.included(base)
      base.class_eval do
        include InstanceMethods
        
        rescue_from ActiveRecord::RecordNotFound, :with => :render_not_found_error
        rescue_from ActionController::RoutingError, :with => :render_not_found_error
        rescue_from ActionController::UnknownAction, :with => :render_not_found_error
        rescue_from ActionController::UnknownController, :with => :render_not_found_error
      end
    end
    
    module InstanceMethods
      # Renders a 404
      def render_not_found_error(exception = nil)
        render_error(404, exception)
      end

      # Helper method for rendering the template for a particular status code,
      # and setting the appropriate HTTP status code on the response
      def render_error(status_code, exception = nil)
        respond_to do |format|
          format.html { render :template => "safety_valve/#{status_code}", :status => status_code }
          format.all  { render :nothing => true, :status => status_code }
        end
        true # so we can do "render_404 and return"
      end
    end
  end
end