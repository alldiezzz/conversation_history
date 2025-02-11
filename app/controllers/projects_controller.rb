class ProjectsController < ApplicationController
  before_action :authenticate_user!

  private

  def project_params
    params.require(:project).permit(:title, :description, :status, :user_id)
  end

  def index_filter_query
    {}
  end
end
