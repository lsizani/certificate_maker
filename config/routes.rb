Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/certificate' => 'welcome#certificate', as: 'certificates', :defaults => { :format => 'pdf' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
