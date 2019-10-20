class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items
  has_many :items, through: :cart_items

  def total
    total = 0

    self.items.each do |item|
      total += item.price
    end

    currency_total = sprintf "%.2f", total

    return '$' + currency_total
  end

  def order_date
    self.updated_at.in_time_zone('Eastern Time (US & Canada)').strftime('%b %d, %Y')
  end
end
