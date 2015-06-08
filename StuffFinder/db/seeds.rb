# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
Classified.delete_all
User.delete_all

cat1 = Category.create(:name => 'Louvre')
cat2 = Category.create(:name => 'Museum of Modern Art (MOMA)')
 
class1 = Classified.create(:title => 'Vincent van Gogh', :description => 'Dutch', :price => '3/2/1795', :category_id => cat1, :user_id => '')
class2 = Classified.create(:title => 'Pablo Picasso', :description => 'Spain', :price => '5/3/1686', :category_id => cat1, :user_id => '')
class3 = Classified.create(:title => 'Salvador Dali', :description => 'Spain', :price => '4/9/1583', :category_id => cat2, :user_id => '')
class4 = Classified.create(:title => 'Claude Monet', :description => 'French', :price => '3/9/1275', :category_id => cat2, :user_id => '')
class5 = Classified.create(:title => 'Henri Matisse', :description => 'French', :price => '8/3/1376', :category_id => cat1, :user_id => '')
 

 
Painting.create(:title => 'Self Portrait', :year => '1245', :style => 'oil',  :image => 'http://www.artcyclopedia.org/art/van-gogh-self.jpg', :artist => art1, :museum => mus1)
Painting.create(:title => 'A Woman', :year => '1656', :style => 'canvas', :image => 'http://www.arttherapyblog.com/uimages/2010/10/picasso_woman_b.jpg', :artist => art3, :museum => mus2)
Painting.create(:title => 'Butterfly Ship', :year => '1837', :style => 'water colors', :image => 'http://www.idealnetworker.com/home/idealnet/public.html/wp-content/uploads/2011/04/art-salvador-dali.jpg', :artist => art1, :museum => mus1)
Painting.create(:title => 'Twilight', :year => '1488', :style => 'fabric', :image => 'http://framingpainting.com/UploadPic/Claude%20Monet/big/Venice%20Twilight.jpg', :artist => art4, :museum => mus2)
Painting.create(:title => 'Lydia', :year => '1734', :style => 'oil', :image => 'http://www.arthermitage.org/Henri-Matisse/Portrait-of-Lydia-Delectorskaya.jpg', :artist => art4, :museum => mus1)
 
 
puts "Paintings, Artists, and Museums Added"
