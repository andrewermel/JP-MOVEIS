FactoryBot.define do
    factory :item do
      name { "Exemplo de Item" }
      description { "Descrição do item." }
      sale_price { 100.0 }
      purchase_price { 80.0 }
      status { "disponivel" } # ou um dos valores válidos que você definiu
      after(:build) do |item|
        item.images.attach(io: File.open(Rails.root.join('spec/fixtures/image.png')), filename: 'image.png', content_type: 'image/png') if item.images.empty?
      end
    end
  end
  