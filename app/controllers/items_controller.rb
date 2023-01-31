# typed: true
# frozen_string_literal: true

class ItemsController < ApplicationController
  extend T::Sig

  before_action :load_list

  def new
    @item = @list.items.build
  end

  def create
    @item = @list.items.build(item_params)
    if @item.save
      redirect_to new_list_item_path(@list)
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  private

  sig { void }
  def load_list
    @list = List.find(params[:list_id])
  end

  def item_params
    tabs_params = T.cast(params.require(:item), ActionController::Parameters)
    tabs_params.permit(:name, :url, :quantity, :image)
  end
end
