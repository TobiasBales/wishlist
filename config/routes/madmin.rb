# typed: false
# frozen_string_literal: true

# Below are the routes for madmin
namespace :madmin do
  namespace :active_storage do
    resources :variant_records
  end
  namespace :active_storage do
    resources :attachments
  end
  namespace :active_storage do
    resources :blobs
  end
  resources :lists
  resources :password_reset_tokens
  resources :people
  resources :sessions
  resources :users
  resources :email_verification_tokens
  resources :items
  root to: "dashboard#show"
end
