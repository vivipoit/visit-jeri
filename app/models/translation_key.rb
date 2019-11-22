# frozen_string_literal: true

class TranslationKey
  def self.list
    home + footer
  end

  def self.home
    %w[
      home_small_print
      home_main_title
      more_info
      from_the_people_who_have_come
    ]
  end

  def self.footer
    %w[
      contact_us
      eager_to_help
      thanks
      send_form_info
      all_rights_reserved
      jeri_ce_brasi
    ]
  end
end
