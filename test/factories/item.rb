Factory.define :item do |item|
  item.productname       { 'string' }
  item.seller             { 'string' }
  item.description        { 'text' }
  item.price              { '1.99' }
  item.quantity           { 'integer' }
  item.producturl        { 'string' }
  item.productimageurl  { 'string' }
  item.comments           { 'text' }
  item.list_id            { '1' }
  item.association(:list)
end
