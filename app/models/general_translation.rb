# frozen_string_literal: true

class GeneralTranslation < ApplicationRecord
  self.table_name = 'translations'

  after_save :reload_i18n_backend
  after_destroy :reload_i18n_backend

  def reload_i18n_backend
    I18n.backend.reload!
  end
end
