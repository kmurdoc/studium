class ProfilesController < ApplicationController
    def index
        @profiles = Profile.all
    end
    
    def show
        @profile = Profile.find(params[:id])
    end
    
    def new
        @profile = Profile.new
    end
    
    def create
        @profile = Profile.new(profile_params)
        
        if @profile.save
            redirect_to @profile
        else
            render 'new'
        end
    end
end

private
    def profile_params
        params.require(:profile).permit(:firstName, :lastName, :classLevel, :major,
                                            :course1, :course2, :course3, :course4, :course5)
    end 