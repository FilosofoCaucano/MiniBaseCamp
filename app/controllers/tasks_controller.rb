class TasksController < ApplicationController
  before_action :set_project
  before_action :set_task, only: %i[show edit update destroy toggle_status]

  # GET /projects/:project_id/tasks
  def index
    @tasks = @project.tasks
  end

  # GET /projects/:project_id/tasks/:id
  def show
  end

  # GET /projects/:project_id/tasks/new
  def new
    @task = @project.tasks.build
  end

  # GET /projects/:project_id/tasks/:id/edit
  def edit
  end

  # POST /projects/:project_id/tasks
  def create
    @task = @project.tasks.build(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to project_path(@project), notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/:project_id/tasks/:id
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to project_path(@project), notice: "Task was successfully updated." }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/:project_id/tasks/:id
  def destroy
    @task.destroy!
    respond_to do |format|
      format.html { redirect_to project_path(@project), status: :see_other, notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # PATCH /projects/:project_id/tasks/:id/toggle_status
  def toggle_status
    case @task.status
    when "pendiente"
      @task.update(status: "en progreso")
    when "en progreso"
      @task.update(status: "finalizada")
    when "finalizada"
      @task.update(status: "pendiente")
    end

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to project_path(@project), notice: "Estado actualizado" }
    end
  end

  private

    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_task
      @task = @project.tasks.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :status)
    end
end
