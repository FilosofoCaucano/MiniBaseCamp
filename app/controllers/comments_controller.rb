class CommentsController < ApplicationController
    def create
      @task = Task.find(params[:task_id])
      @comment = @task.comments.build(comment_params)
  
      if @comment.save
        respond_to do |format|
          format.turbo_stream
          format.html { redirect_to project_path(@task.project) }
        end
      else
        render plain: "Error al guardar comentario", status: 422
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:content)
    end
  end
  