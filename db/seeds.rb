Post.delete_all
Category.delete_all

(1..5).to_a.each do |index|
  category = Category.create(:name => 'category_' + index.to_s)

  (1..10).to_a.each do |post_index|
    category.posts.create(
      :title => "title #{rand(50)}",
      :text => "Post #{post_index} in the #{category.name}" * 9,
      :source => "source of post #{post_index}",
      :tags => "tag #{rand(10)}, tag #{rand(10)}, tag #{rand(10)}"
    )
  end
end




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
