import { Controller } from "@hotwired/stimulus"
import consumer from '../channels/consumer';

export default class extends Controller {
  static targets = ['bookstatus']

  connect() {
    console.log('Will create subscription to: channel: "BookstatusChannel" library_book_id: ' + this.data.get('bookid'));

    this.channel = consumer.subscriptions.create({ channel: 'BookstatusChannel', library_book_id: this.data.get('bookid') }, {
      connected: this._cableConnected.bind(this),
      disconnected: this._cableDisconnected.bind(this),
      received: this._cableReceived.bind(this),
    });
  }

  _cableConnected() {
    // Called when the subscription is ready for use on the server
    console.log('_cableConnected');
  }

  _cableDisconnected() {
    // Called when the subscription has been terminated by the server
    console.log('_cableDisconnected');
  }

  _cableReceived(data) {
    console.log('_cableReceived');
    // Called when there's incoming data on the websocket for this channel
    this.bookstatusTarget.innerHTML = data.message;
  }
}