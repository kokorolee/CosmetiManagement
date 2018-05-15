# if Area.pluck(:id).empty?
#   areas = JSON.parse(File.read('/area_2018-05-15_14h30m38.json'))
#   areas.each do |a|
#     Area.create!(a.to_h)
#   end
# end
#
# if Agency.pluck(:id).empty?
#   agencies = JSON.parse(File.read('/agency_2018-05-15_14h30m10.json'))
#   agencies.each do |a|
#     Agency.create!(a.to_h)
#   end
# end
# if Category.pluck(:id).empty?
#   categories = JSON.parse(File.read('/category_2018-05-15_21h44m48.json'))
#   categories.each do |a|
#     Category.create!(a.to_h)
#   end
# end
User.destroy_all
Agency.destroy_all
Area.destroy_all
Product.destroy_all
Provider.destroy_all
Category.destroy_all

providers = JSON.parse(File.read('db/provider_2018-05-15_14h31m26.json'))
products = JSON.parse(File.read('db/product_2018-05-15_14h51m32.json'))
categories = JSON.parse(File.read('db/category_2018-05-15_21h44m48.json'))
agencies = JSON.parse(File.read('db/agency_2018-05-15_14h30m10.json'))
areas = JSON.parse(File.read('db/area_2018-05-15_14h30m38.json'))
users = JSON.parse(File.read('db/user_2018-05-15_15h04m12.json'))
if User.pluck(:id).empty?
  users.each do |u|
    puts u
    User.create!(u.to_h)
  end
end

if Area.pluck(:id).empty?
  areas.each do |u|
    puts u
    Area.create!(u.to_h)
  end
end

if Agency.pluck(:id).empty?
  agencies.each do |u|
    puts u
    Agency.create!(u.to_h)
  end
end

if Category.pluck(:id).empty?
  categories.each do |u|
    puts u
    Category.create!(u.to_h)
  end
end

if Provider.pluck(:id).empty?
  providers.each do |u|
    puts u
    Provider.create!(u.to_h)
  end
end

if Product.pluck(:id).empty?
  products.each do |u|
    puts u
    Product.create!(u.to_h)
  end
end
