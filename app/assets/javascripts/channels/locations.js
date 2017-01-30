App.locations = App.cable.subscriptions.create(LocationsChannel', {  
  received: function(data) {
    $("#locations").removeClass('hidden')
    return $('#locations').append(this.renderLocation(data));
  },

  renderLocation: function(data) {
    return "<p> <b>" + data.location + "</p>";
  }
});