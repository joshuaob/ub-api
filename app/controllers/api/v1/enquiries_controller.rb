module Api
  module V1
    class EnquiriesController < ActionController::API
      def create
        enquiry = Enquiry.new(enquiry_params)

        if enquiry.save
          render jsonapi: enquiry, status: :created
        else
          render jsonapi_errors: enquiry.errors
        end
      end

      private

      def enquiry_params
        params.require("_jsonapi").require("data").require("attributes").permit(:first_name, :last_name, :company, :role, :email, :phone_number)
      end
    end
  end
end
