# Third Recommendation Page

Rails app challenge

## TODO

- The Recommendation controller's `send_recommendation_email` currently does
  nothing. It should send an email to the recipient_email using ActionMailer.
- The `current_user` method is a dummy implementation. Would need to get this
  from the authentication system in a real app. i.e. Devise.
- There should be a "Add another email" button that adds a new input for the
  user to type another email in. The backend would need to be changed to
  accept, record and send multiple emails.
- I did not have enough time to finish the front end styling. This would need
  more work, and could be further improved with feedback from the designers and
  accurate colors, fonts, sizes and assets.
