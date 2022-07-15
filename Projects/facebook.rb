require 'koala'
require 'json'

@graph = Koala::Facebook::API.new("EAACEdEose0cBAE6UMs869ZAgjc37Pp9qOVS1E2nSEqlcg3ExLFbkmjbORDmdXFSC26HBM1ZAMxH2JZB9ctsCgHu4LN4bD1JKIkFYAfCFN7p1btgcAIZB6REWE5tFCzRS7Dsx1RidoT5ofq6XlWBNSBSRuXumlTxh1lc03TDVgAZDZD")

profile = @graph.get_object("me")

friends = @graph.get_connections("me", "friends")

feed = @graph.get_connections("me", "feed")

@graph.put_connections("me", "feed", message: "I am writing on my wall!")

puts JSON.pretty_generate feed
