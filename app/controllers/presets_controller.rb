class PresetsController < ApplicationController

  # before_filter :check_if_user, :only => [:new, :create]
  # before_filter :check_if_specific_user, :only => [:show]

  def show
    @preset = Preset.find(params[:id])
  end
  def new
    @preset = Preset.new
  end
  def create
    @preset = Preset.new(params[:preset])
    if @preset.save
      @auth.presets << @preset
      redirect_to(root_path)
    else
      render :new
    end
  end
  def index
      @presets = Preset.order(:name)
  end

  private
  def check_if_specific_user
    redirect_to(root_path) if @auth.nil? || @auth.preset_ids.exclude?(params[:id].to_i)
  end
end
