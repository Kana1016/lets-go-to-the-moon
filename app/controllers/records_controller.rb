class RecordsController < ApplicationController
  before_action :authenticate_user! # 各アクションが動く前にログインしているかしていないかを判断し、ログインしていなければアクションを動かすことなくログインページが表示されるようする
  before_action :set_record, only: [:show, :edit, :update]

  def index
    @records = current_user.records
  end

  def new
    @record = Record.new
  end

  def create
    @record = current_user.records.build(record_params)
    if @record.save
      redirect_to root_path, notice: '記録が保存されました！'
    else
      flash.now[:alert] = '登録に失敗しました'
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @record.update(record_params)
      redirect_to record_path(@record), notice: '記録を更新しました！'
    else
      flash.now[:alert] = '更新に失敗しました'
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def record_params
    params.require(:record).permit(:jump_time, :jump_count, :jump_total_count, :walk_count, :total_distance, :recorded_at)
  end

  def set_record
    @record = current_user.records.find(params[:id])
  end
end
