class PrivateAssignsController < ApplicationController
  
  # after_action :verify_authorized, except: [:index, :show, :new], unless: :skip_pundit?

  def index
    @private_assigns = PrivateAssign.all
  end

  def show
  end

  def new
    @private_assign = PrivateAssign.new
    @privatecat = Privatecat.find(params[:privatecat_id])
    @emails = User.all.map { |user| user.email }
    authorize @private_assign
  end

  def create
    @privatecat = Privatecat.find(params[:privatecat_id])
    @users = User.where(email: params[:private_assign][:user])
   
    @private_assign_name = params[:private_assign][:name]

    @users.each do |user|
    
    @private_assign = PrivateAssign.create(name:  @private_assign_name, privatecat: @privatecat, user: user)
    authorize @private_assign
    end

    if @private_assign.save

      redirect_to privatecat_path(@privatecat), notice: 'Accès autorisé.'

    else
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def set_private_assign
    #raise
    @private_assign = PrivateAssign.find(params[:id])
    authorize @private_assign
  end

  def parivate_assign_params
    params.require(:private_assign).permit(:name)
  end
end
