require 'rails_helper'

describe ProductsController, type: :controller do
  context 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

   context 'GET #show' do
     it 'renders the show template' do
       get :show
       expect(response).to be_ok
       expect(response).to render_template('show')
     end
   end

   context 'GET #new' do
     it 'renders the new template' do
       get :new
       expect(response).to be_ok
       expect(response).to render_template('new')
     end
   end

   context 'GET #edit' do
     it 'renders the edit template' do
       get :new
       expect(response).to be_ok
       expect(response).to render_template('edit')
     end
   end

   describe 'GET #create' do
     context 'when a product is saved' do
       expect(response).to redirect_to(products_path)
      end

     context 'when a product is not saved' do
       expect(response).to render_template(create)

     end
   end 

   describe 'GET #update' do
     context 'when a product is updated' do
       expect(response).to redirect_to(products_path)
      end

     context 'when a product is not updated' do
       expect(response).to render_template(update)
    end
   end

   context 'GET #destroy' do
     it 'renders the destroy template' do
       get :new
       expect(response).to be_ok
       expect(response).to render_template('destroy')
     end
   end

 end
