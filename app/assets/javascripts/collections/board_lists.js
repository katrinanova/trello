TrelloClone.Collections.BoardLists = Backbone.Collection.extend({
  model: TrelloClone.Models.List,

  url: function () {
    return this.board.url() + "/lists"; //does it need one?
  }
})
