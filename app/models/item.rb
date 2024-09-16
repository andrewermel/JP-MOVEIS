class Item < ApplicationRecord
    has_many_attached :images
  
    validates :name, :description, :sale_price, :purchase_price, :status, presence: true
    validates :status, inclusion: { in: ['disponivel', 'indisponivel'] }
    validate :images_attached
  
    private
  
    def images_attached
      if images.blank?
        errors.add(:images, "precisa estar anexada.")
      else
        images.each do |image|
          unless image.content_type.in?(%w(image/png image/jpg image/jpeg))
            errors.add(:images, "deve ser uma imagem PNG, JPG ou JPEG.")
          end
        end
      end
    end
  end
  