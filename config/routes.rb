# == Route Map
#
#                   Prefix Verb   URI Pattern                        Controller#Action
#                     root GET    /                                  visitors#index
#         new_user_session GET    /users/sign_in(.:format)           devise/sessions#new
#             user_session POST   /users/sign_in(.:format)           devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)          devise/sessions#destroy
#            user_password POST   /users/password(.:format)          devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)      devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)     devise/passwords#edit
#                          PATCH  /users/password(.:format)          devise/passwords#update
#                          PUT    /users/password(.:format)          devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)            devise_invitable/registrations#cancel
#        user_registration POST   /users(.:format)                   devise_invitable/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)           devise_invitable/registrations#new
#   edit_user_registration GET    /users/edit(.:format)              devise_invitable/registrations#edit
#                          PATCH  /users(.:format)                   devise_invitable/registrations#update
#                          PUT    /users(.:format)                   devise_invitable/registrations#update
#                          DELETE /users(.:format)                   devise_invitable/registrations#destroy
#        user_confirmation POST   /users/confirmation(.:format)      devise/confirmations#create
#    new_user_confirmation GET    /users/confirmation/new(.:format)  devise/confirmations#new
#                          GET    /users/confirmation(.:format)      devise/confirmations#show
#   accept_user_invitation GET    /users/invitation/accept(.:format) devise/invitations#edit
#   remove_user_invitation GET    /users/invitation/remove(.:format) devise/invitations#destroy
#          user_invitation POST   /users/invitation(.:format)        devise/invitations#create
#      new_user_invitation GET    /users/invitation/new(.:format)    devise/invitations#new
#                          PATCH  /users/invitation(.:format)        devise/invitations#update
#                          PUT    /users/invitation(.:format)        devise/invitations#update
#                    users GET    /users(.:format)                   users#index
#                          POST   /users(.:format)                   users#create
#                 new_user GET    /users/new(.:format)               users#new
#                edit_user GET    /users/:id/edit(.:format)          users#edit
#                     user GET    /users/:id(.:format)               users#show
#                          PATCH  /users/:id(.:format)               users#update
#                          PUT    /users/:id(.:format)               users#update
#                          DELETE /users/:id(.:format)               users#destroy
#                     page GET    /pages/*id                         high_voltage/pages#show
#

Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
