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
       get :show, params: { id: Product.create(name: 'test').id }
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
       expect(response).to render_template('new')
     end
   end

describe 'GET #create' do
  context 'when a product is saved' do
    it 'redirects' do
       get :new
       expect(response).to be_ok
       
      end
   end

  context 'when a product is not saved' do
    it 'redirects' do
       get :edit, params: { id: Product.create(name: 'test').id }
       expect(response).to render_template('edit')
     end
   end
end

describe 'GET #update' do
     context 'when a product is updated' do
       it 'redirects' do
      get :show, params: { id: Product.create(name: 'test').id }
      expect(response).to be_ok

      end
    end

     context 'when a product is not updated' do
       it 'redirects' do
         get :edit, params: { id: Product.create(name: 'test').id }
       expect(response).to render_template('edit')
      end
   end
end

   context 'GET #destroy' do
     it 'renders the destroy template' do
       get :new, params: { id: Product.create(name: 'test').id }
       expect(response).to be_ok
       expect(response).to render_template('new')
     end
   end

 end
