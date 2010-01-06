Factory.define :item do |item|
  item.product_name       { 'string' }
  item.seller             { 'string' }
  item.description        { 'text' }
  item.price              { '1.99' }
  item.quantity           { 'integer' }
  item.product_url        { 'string' }
  item.product_image_url  { 'string' }
  item.comments           { 'text' }
  item.list_id            { '1' }
  item.association(:list)
end
