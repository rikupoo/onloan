class ItemsController < ApplicationController
  before_action :authenticate_company!
end
