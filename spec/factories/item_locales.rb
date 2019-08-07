FactoryBot.define do
  factory :item_locale do
    list_title   { 'Compartilhado 4x4' }
    list_summary { 'Melhor opção para Fortaleza x Jeri' }
    link         { 'compartilhado-4x4' }
    page_title   { 'Veículo 4x4 compartilhado com outras pessoas' }
    page_content { 'Tem ar condicionado. Te pega na porta da pousada e te deixa no aeroporto de Fortaleza.' }
    association :item
    association :content_locale
  end
end
