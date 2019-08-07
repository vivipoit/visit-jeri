I18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
I18n.available_locales = ['en', 'pt']
I18n.default_locale = 'pt'
