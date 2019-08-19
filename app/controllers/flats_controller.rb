require 'open-uri'

class FlatsController < ApplicationController
  # before_action :initialize, only: [:list]

  # def initialize
  #   @flats_array = []
  # end

  def list
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    serialized = open(url).read
    @flats_array = JSON.parse(serialized)
    @flats_array
  end

  def flat
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    serialized = open(url).read
    @flats_array = JSON.parse(serialized)
    id = params["id"]
    @flats_array.each do |flat|
        # raise
      if flat["id"].to_s == id
        @flat = flat
      end
    end
    @flat
  end
end
