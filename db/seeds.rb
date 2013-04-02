Website.delete_all
User.delete_all
Preset.delete_all


w1 = Website.create(:name => 'N Y Times', :url => 'http://www.nytimes.com/', :image_url => 'http://bkbazaar.com/wp-content/uploads/2011/12/New-York-Times-Logo1.png', :nokogiri_selector => '#ledePhoto .image a img', :nokogiri_link_selector => '#ledePhoto .image a')

w2 = Website.create(:name => 'L A Times', :url => 'http://www.latimes.com', :image_url => 'http://images.wikia.com/lanoire/images/3/30/Latimes-logo.gif', :nokogiri_selector => '.center_photo a img', :nokogiri_link_selector => '.center_photo a')

w4 = Website.create(:name => 'Epicurious', :url => 'http://www.epicurious.com/', :image_url => 'http://cdn.appstorm.net/android.appstorm.net/authors/md-saim-fattah/Epi_logo.png', :nokogiri_selector => '#hp-recipecentral a img', :nokogiri_link_selector => '#hp-recipecentral a')

w5 = Website.create(:name => 'Gawker', :url => 'http://www.gawker.com/', :image_url => 'http://global.fncstatic.com/static/managed/img/Scitech/Gawker%20logo.jpg', :nokogiri_selector => '.illustration.top a img', :nokogiri_link_selector => '.illustration.top a')

w6 = Website.create(:name => 'Huffington Post', :url => 'http://www.huffingtonpost.com/', :image_url => 'http://assets.airbnb.com/press/logos/Huffington%20Post%20Logo.jpeg', :nokogiri_selector => '#headline_image_container a img', :nokogiri_link_selector => '#headline_image_container a')

w7 = Website.create(:name=> 'N B A', :url => 'http://www.nba.com/', :image_url => 'http://nbamathhoops.org/site_media/images/collaborator_logos/nba_logo.png', :nokogiri_selector => '.nbaTPanel.panel1 a img', :nokogiri_link_selector => '.nbaTPanel.panel1 a')

u1 = User.create(:name => 'Simon', :email => 'simon@gmail.com', :password => 'a', :password_confirmation => 'a')

u2 = User.create(:name => 'a', :email => 'a@gmail.com', :password => 'a', :password_confirmation => 'a')

