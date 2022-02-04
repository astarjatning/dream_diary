class SurprisesController < ApplicationController
  before_action :diary_params

  def create
    current_user.surprises.create(diary_id: params[:id])
  end

  def destroy
    Surprise.find_by(user_id: current_user.id, diary_id: params[:id]).destroy
  end

  private

  def diary_params
    @diary = Diary.find(params[:id])
  end
end
