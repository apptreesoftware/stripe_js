import 'dart:js';
import 'package:js/js.dart';
import 'package:stripe_js/stripe_js.dart';
import 'dart:html';

main() {
// Create a Stripe client
  var stripe = Stripe('STRIPE_TOKEN');

// Create an instance of Elements
  var elements = stripe.elements();

// Custom styling can be passed to options when creating an Element.
// (Note that this demo uses a wider set of styles than the guide below.)
  var style = {
    "base": {
      "color": '#32325d',
      "lineHeight": '18px',
      "fontFamily": '"Helvetica Neue", Helvetica, sans-serif',
      "fontSmoothing": 'antialiased',
      "fontSize": '16px',
      '::placeholder': {"color": '#aab7c4'}
    },
    "invalid": {"color": '#fa755a', "iconColor": '#fa755a'}
  };

// Create an instance of the card Element
  var card = elements.create('card', new ElementsOptions(classes: style));

// Add an instance of the card Element into the `card-element` <div>
  card.mount('#card-element');

// Handle real-time validation errors from the card Element.
  card.on(
    'change',
    allowInterop(([event]) {
      var displayError = document.getElementById('card-errors');
      if (event.error != null) {
        displayError.text = event.error.message;
      } else {
        displayError.text = '';
      }
    }),
  );

// Handle form submission
  var form = document.getElementById('payment-form');
  form.addEventListener(
    'submit',
    allowInterop((event) {
      event.preventDefault();
      stripe.createToken(card).then(
        allowInterop((result) {
          if (result.error != null) {
            // Inform the user if there was an error
            var errorElement = document.getElementById('card-errors');
            errorElement.text = result.error.message;
          } else {
            // Send the token to your server
            print("got token: ${result.token.id}");
          }
        }),
      );
    }),
  );
}
