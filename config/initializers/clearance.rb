Clearance.configure do |config|
  config.mailer_sender = "reply@example.com"
  config.rotate_csrf_on_sign_in = true
  config.allow_sign_up = false
  config.routes = false
  config.signed_cookie = true
end
