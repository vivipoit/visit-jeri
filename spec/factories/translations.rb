# frozen_string_literal: true
FactoryBot.define do
  factory :translation do
    locale         { 'pt' }
    key            { 'thanks' }
    value          { 'Obrigado!' }
    interpolations { [] }
    is_proc        { false }
  end
end
