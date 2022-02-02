
# Back End Lesson 5.1: REST APIs in Rails
# 5.1.2 More REST for CRUD Operations
# More REST APIs
# Adding Application Logic

class Api::V1::MembersController < ApplicationController
  include AuthenticationCheck

  before_action :is_user_logged_in
  before_action :set_member, only: [:show, :update, :destroy]

  # GET /members
  def index
    @members = Member.all
    render json: @members
  end

  # GET /members/:id
  def show
    # your code goes here
    # byebug
    @member = Member.find(params[:id])
    if @member = Member.find(params[:id])
      render json: @member, status: 200
      # 200:  successfully found it
    else
      render json: { error:
        "Unable to show member: #{@member.errors.full_messages.to_sentence}"},
        status: 204
        # No content
      end

    end

    # POST /members
    def create
      @member = Member.new(member_params)
      if @member.save
        render json: @member, status: 201
        # successfully created
      else
        render json: { error:
          "Unable to create member: #{@member.errors.full_messages.to_sentence}"},
          status: 400
          # bad request
        end
      end

      # PUT /members/:id
      def update
        # your code godes here
        @member = Member.find(params[:id])
        if @member.update(member_params)
          render json: @member

        else
          render json: { error:
            "Unable to update member: #{@member.errors.full_messages.to_sentence}"},
            status: 404
            # Not found
          end

        end

        # DELETE /members/:id
        def destroy
          @member.destroy
          render json: { message: 'Member record successfully deleted.'}, status: 200
        end

        private

        def member_params
          params.require(:member).permit(:first_name, :last_name)
        end

        def set_member
          @member = Member.find(params[:id])
        end

      end




      # substituted w/ above 1.28.22
      # class Api::V1::MembersController < ApplicationController
      # end
