require_relative '../lib/word_cloud.rb'
require 'json'
require 'pp'

json_file = File.read("../data/quotes.json")

quote_cloud = WordCloud.new(JSON.parse(json_file))
pp quote_cloud.analyze