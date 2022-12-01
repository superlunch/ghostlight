class UsersController < ApplicationController
    # skip_before_action :authorize, only: [:create, :login, :destroy, :update]
    # Will remove :destroy and :update skip later, just for testing
    before_action :authorize, only:[:me]
    
    def index
        users = User.all_except(current_user)
        render json: users
    end
    
    def create
        user = User.create!(user_params)
        @token = encode_token(user_id: user.id)
        render json: {user: UserSerializer.new(user), token: @token}, status: :created
    end

    def login
        @user = User.find_by!(email: login_params[:email])
        if @user&.authenticate(login_params[:password])
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), token: @token}, status: :accepted
        else
            render json: { error: "Incorrect password" }, status: :unauthorized
        end
    end

    def me
        # @user = User.find_by!()
        render json: current_user, status: :ok
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end


    private

    def user_params
        params.permit(:email, :password, :first_name, :last_name, :phone, :dob, :emergency_name, :emergency_phone, :emergency_relationship, :job_id, :production_id)
    end

    def login_params
        params.permit(:email, :password)
    end

end
