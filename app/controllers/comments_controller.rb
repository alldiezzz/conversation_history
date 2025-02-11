class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: %i[create]

  def create
    @comment = Comment.create(comment_params)

    redirect_to @project
    # if @comment.save!
    #   respond_to do |format|
    #     format.turbo_stream
    #     format.html { redirect_to @project, notice: "Comment added!" }
    #   end
    # else
    #   redirect_to @project
    # end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :project_id, :user_id)
  end

  def set_project
    @project = Project.find(comment_params[:project_id])
  end
end
