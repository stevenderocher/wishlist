Factory.define :list do |list|
  list.user_id { 'integer' }
  list.title { 'string' }
  list.association(:user)
end
