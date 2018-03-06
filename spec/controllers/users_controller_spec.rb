require 'rails_helper'

describe UsersController, type: :controller do

 @user = FactoryBot.create(:user)

  #let (:user) { User.create!(email:'achochaocierva@gmail.com', password: 'Ratadecierva2')}

 describe 'GET #show' do
      context 'when a user is logged in' do
        before do
          sign_in @user = FactoryBot.create(:user)
        end
        it 'loads correct user details' do
             get :show, params: { id: @user = FactoryBot.create(:user).id }
             expect(response).to be_ok
             expect(assigns(@user = FactoryBot.create(:user))).to eq @user = FactoryBot.create(:user)
          end
        end

      context 'when a user is not logged in' do
        it 'redirects to login' do
          get :show, params: { id: @user = FactoryBot.create(:user).id }
          expect(response).to redirect_to(new_user_session_path)
       end
    end
  end
end
