Rails.application.routes.draw do

  #自動でRESTfulなルート定義の生成
  resources :insclones do
    #確認画面のルーティング追加
    collection do
      post :confirm
    end
  end
end
