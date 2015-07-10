# write some jbuilder to return some json about a board
# it should include the board
#  - its lists
#    - the cards for each list
json.(@board, :title)
json.lists do
  json.array! @board.lists do |list|
    json.extract! list, :title
    json.array! list.cards do |card|
      json.extract! card, :title, :description
    end
  end
end
