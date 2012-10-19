class WtfController < ApplicationController
  def new_alien
    @alien = Alien.new
  end

  def create_alien
    @alien = Alien.new(params[:alien])
    if @alien.save
      if session[:number] == 1 || session[:number] == nil
        redirect_to wtf_path
      elsif session[:number] != 1
        session[:number] -= 1
        redirect_to new_alien_path
      end
    else
      render :create_alien
    end
  end

  def new_robot
    @robot = Robot.new
  end

  def create_robot
    @robot = Robot.new(params[:robot])
    if @robot.save
      if session[:number] == 1 || session[:number] == nil
        redirect_to wtf_path
      elsif session[:number] != 1
        session[:number] -= 1
        redirect_to new_robot_path
      end
    else
      render :create_robot
    end
  end

  def index
  end

  def decide

    session[:number] = params[:number].to_i
    session[:make] = params[:make]
    redirect_to show_path if session[:number] == 0
    redirect_to new_alien_path if session[:make] == 'alien' 
    redirect_to new_robot_path if session[:make] == 'robot' 
  end

  def show
    @robots = Robot.all
    @aliens = Alien.all
  end
end