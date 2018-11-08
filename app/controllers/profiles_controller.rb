class ProfilesController < ApplicationController
    def show
        @profile = Profile.find(params[:id])
    end
    
    def new
    end
    
    def create
        @profile = Profile.new(profile_params)
        
        @profile.save
        redirect_to @profile
        
    end
end

private
    def profile_params
        params.require(:profile).permit(:firstName, :lastName, :classLevel, :major,
                                            :course1, :course2, :course3, :course4, :course5)
    end 