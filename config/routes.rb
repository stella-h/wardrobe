# == Route Map
#
#          Prefix Verb URI Pattern                Controller#Action
#      tags_index GET  /tags/index(.:format)      tags#index
#     tags_create GET  /tags/create(.:format)     tags#create
#        tags_new GET  /tags/new(.:format)        tags#new
#       tags_edit GET  /tags/edit(.:format)       tags#edit
#       tags_show GET  /tags/show(.:format)       tags#show
#     tags_update GET  /tags/update(.:format)     tags#update
#    tags_destroy GET  /tags/destroy(.:format)    tags#destroy
#   outfits_index GET  /outfits/index(.:format)   outfits#index
#  outfits_create GET  /outfits/create(.:format)  outfits#create
#     outfits_new GET  /outfits/new(.:format)     outfits#new
#    outfits_edit GET  /outfits/edit(.:format)    outfits#edit
#    outfits_show GET  /outfits/show(.:format)    outfits#show
#  outfits_update GET  /outfits/update(.:format)  outfits#update
# outfits_destroy GET  /outfits/destroy(.:format) outfits#destroy
#     users_index GET  /users/index(.:format)     users#index
#    users_create GET  /users/create(.:format)    users#create
#       users_new GET  /users/new(.:format)       users#new
#      users_edit GET  /users/edit(.:format)      users#edit
#      users_show GET  /users/show(.:format)      users#show
#    users_update GET  /users/update(.:format)    users#update
#   users_destroy GET  /users/destroy(.:format)   users#destroy
#            root GET  /                          pages#home
#

Rails.application.routes.draw do

  get 'session/new'

  get 'session/create'

  get 'session/destroy'

  resources :tags
  resources :users
  resources :outfits

end