Rails.application.config.middleware.use OmniAuth::Builder do
  #keys for heroku
  #provider :facebook, '611535688932080','7390d3c488d1973ae6833769d0f1eec2'
  
  #keys for offline - localhost:3000
  provider :facebook, '162180660488445', 'ddd5b1dd54b2eb99fb9b79835d1a0fc8'
end
