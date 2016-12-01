## SETUP
1. clone project and run `bundle install` to update gem for project.
2. run rake `db:setup` to setup database for project.
* make sure that your machine have been installed `ruby 2.3.0` and `rails 4.2.5` to run this project.


#PUSH DATA FOR TEST THIS PROJECT

Please run `rails console` and add database like example hereafter

#### CREATE NEW ARTICLE
Article.new(title:'New MacBook Pro 2016 release date, UK price and tech specs | Complete guide to new MacBook Pro 2016: New MacBook Pro already expected to get spec bump and price cut in 2017', string: 'Welcome to our complete UK guide to the new MacBook Pro 2016, in which we cover everything you need to know about Apple's new MacBook Pro models: UK prices, shipping dates and where to buy, new features, tech specs and performance stats. You can read more here: New MacBook Pro 2016 review.', like_count: 0).save!

#### CREATE NEW TEXT
Text.new(headline: 'New MacBook Pro 2016 release date, UK price and tech specs: New MacBook Pro announced!', display_order:2, content: 'Apple announced a long awaited update to its MacBook Pro laptops at an event in San Francisco on 27 October. The laptops, both 13in and 15in, feature USB-C ports and a Retina display, multi-touch Touch Bar, a versatile strip display that replaces the escape, function keys and power keys of a regular qwerty keyboard. We'll look at all these in more detail in this article. On 2 November, Phil Schiller (senior VP of marketing at Apple) was interviewed by The Independent and revealed the company's plans and reaction to the MacBook Pro's announcement. A key point raised in the interview is that Mac and iOS devices will always be separate from one another: the California-based company won't try to integrate the two. Schiller also talks about the removal of the SD card and why Apple chose to keep the 3.5mm headphone jack.', like_count:0, article_id: 1).save!

#### CREATE NEW IMAGE
Image.new(headline: ' ', display_order: 5, url: 'https://cdn2.macworld.co.uk/cmsdata/features/3593988/new_macbook_pro_2016_review_1000b.jpg', like_count: 0, article_id: 1).save!

 
#### START PROJECT
`rails s` or `rails s -p 9001` to start project. Default Project will start on port 3000 but if you run -p 9001 port will be start on port 9001 (0.0.0.0:9001) 
 
## NOTED:
Everything you need to update databse. Please do it on `rails console` or config seed file and run `rake db:drop` and `rake db:setup` to update data.

#RSPEC
>Run `bundle exec rspec --format documentation` to start rspect test.

(Thank so much for interesting in with my mini project)