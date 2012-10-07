Backsource::Application.routes.draw do
scope "api" do
  resources :links
end
root to: "main#index"

end
