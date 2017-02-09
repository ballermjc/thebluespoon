require 'rails_helper'

describe UsersController, :type => :controller do
  # let(:user) { User.create!(email: 'mike@example.com', password: 'passphrase') }
  @user = FactoryGirl.create(:user)
  @user2 = FactoryGirl.create(:user)

  describe 'GET #show' do
    context 'User is logged in' do
      before do
        sign_in @user
      end

      it "loads correct user details" do
        get :show
        expect(response).to be_success
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq user
      end

    context 'No user is logged in' do
      it 'redirects to login' do
        get :show, id: user.id
        expect(response).to redirect_to(root_path)
      end
    end

    context "Check if user can see another user's show page" do
      it 'redirects to root_path' do
      get :show, id: user2.id
      expect(response).to redirect_to(root_path)
      end
    end

  context 'No user is logged in' do
    it 'redirects to login' do
    get :show, id: user1.id
    expect(response).to redirect_to(root_path)
    end
  end

end
end
