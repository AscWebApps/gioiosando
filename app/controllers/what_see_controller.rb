class WhatSeeController < ApplicationController
  def index
    poi = HTTParty.get("http://138.68.161.146:4500/api/web/places/1/points", format: :plain)
    @points = JSON.parse poi, symbolize_names: true
  end
end
