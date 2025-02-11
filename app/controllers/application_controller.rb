class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :set_resource, only: [ :show, :edit, :update, :destroy ]

  def index
    @resources = resource_class.where(index_filter_query)
    render template: "#{controller_name}/index"
  end

  def show
    render template: "#{controller_name}/show"
  end

  def new
    @resource = resource_class.new
    render template: "#{controller_name}/new"
  end

  def create
    @resource = resource_class.new(resource_params)
    if @resource.save
      redirect_to "/#{controller_name}", notice: "#{resource_class.name} was successfully created."
    else
      flash.now[:alert] = @resource.errors.full_messages.to_sentence
      render template: "#{controller_name}/new", status: :unprocessable_entity
    end
  end

  def edit
    render template: "#{controller_name}/edit"
  end

  def update
    if @resource.update(resource_params)
      redirect_to @resource, notice: "#{resource_class.name} was successfully updated."
    else
      flash.now[:alert] = @resource.errors.full_messages.to_sentence
      render template: "#{controller_name}/edit", status: :unprocessable_entity
    end
  end

  def destroy
    @resource.destroy
    redirect_to resource_class, notice: "#{resource_class.name} was successfully deleted."
  end

  private

  def set_resource
    @resource = resource_class.find(params[:id])
  end

  def resource_class
    @resource_class ||= controller_name.classify.constantize
  end

  def resource_params
    send("#{controller_name.singularize}_params")
  end
end
