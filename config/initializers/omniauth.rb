Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '638223849586471', '722b0597979cd66167349eb47643ec27'
end
