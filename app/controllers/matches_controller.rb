class MatchesController < ApplicationController

    
    def create
        pending_match = Match.find_by(matched_user_id: current_user.id, user_id: match_params[matched_user_id])

        if pending_match && pending_match.status == 0 && match_params.status == 1
            Match.create(match_params)
            pending_match.status = 1
            pending_match.save
        else
            match_params.delete :status
            Match.create(match_params, status: 0)
        end
    end

    private

    def match_params
        params.require(:match).permit(:user_id, :matched_user_id, :status)
    end
end
