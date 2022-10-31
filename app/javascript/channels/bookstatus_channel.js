import consumer from "./consumer"

consumer.subscriptions.create("BookstatusChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("we are streaming")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
  }
});
