# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all
Text.delete_all
Image.delete_all

#first Article
Article.create(:title => %{
                  New MacBook Pro 2016 release date, UK price and tech specs | Complete guide to new MacBook Pro 2016:
                  New MacBook Pro already expected to get spec bump and price cut in 2017},
               :string => %{
                  Welcome to our complete UK guide to the new MacBook Pro 2016, in which we cover everything you need
                  to know about Apple's new MacBook Pro models: UK prices, shipping dates and where to buy,
                  new features, tech specs and performance stats.
                  You can read more here: New MacBook Pro 2016 review.
               },
               :like_count => 0)
Text.create(:headline => 'New MacBook Pro 2016 release date, UK price and tech specs: New MacBook Pro announced!',
            :display_order => 2,
            :content => %{Apple announced a long awaited update to its MacBook Pro laptops at an event in San Francisco on 27 October. The laptops, both 13in and 15in, feature USB-C ports and a Retina display, multi-touch Touch Bar, a versatile strip display that replaces the escape, function keys and power keys of a regular qwerty keyboard. We'll look at all these in more detail in this article. On 2 November, Phil Schiller (senior VP of marketing at Apple) was interviewed by The Independent and revealed the company's plans and reaction to the MacBook Pro's announcement. A key point raised in the interview is that Mac and iOS devices will always be separate from one another: the California-based company won't try to integrate the two. Schiller also talks about the removal of the SD card and why Apple chose to keep the 3.5mm headphone jack.},
            :like_count => 0,
            :article_id => 1)

Image.create(:headline => 'macbook pro 2016 with touch ID',
             :display_order => 1,
             :url => %{https://cdn2.macworld.co.uk/cmsdata/features/3593988/new_macbook_pro_2016_review_1000b.jpg},
             :like_count => 0,
             :article_id => 1)

#second Article
Article.create(:title => %{
                    iPhone 7 review: Enhanced cameras, fast performance and IP67 water resistance make the iPhone 7 an attractive option - unless you own an iPhone 6s
                  },
               :string => %{
                  Our iPhone 7 review tests and rates the iPhone 7's design and build quality, features, tech specs, speed, camera capabilities and value for money, to help you decide if Apple's new iPhone is the best smartphone for you
               },
               :like_count => 0)
Text.create(:headline => 'iPhone 7 review: An attractive smartphone... unless you own an iPhone 6s',
            :display_order => 2,
            :content => %{
                Welcome to our iPhone 7 review. If you'd rather read about its bigger-screen sibling, try our iPhone 7 Plus review.

                Apple announced the iPhone 7 on 7 September 2016, alongside the larger iPhone 7 Plus. The new iPhone handsets feature better cameras, new, super-speedy processors, two new colour options and improved water resistance. The iPhone 7 is available to buy in the UK now, via the Apple Store and UK carriers. (Read our roundup of the best cheap iPhone 7 deals UK.)

                If you're still debating whether or not to buy an iPhone 7, our review is sure to help. We test and rate the iPhone 7's design and build quality, features, tech specs, speed, camera capabilities and value for money. And we'd like to give a special mention to Mobile Fun for lending us the iPhone 7 we used to write this review!

                If you're interested in the full current iPhone range, meanwhile, take a look at our iPhone buying guide 2016 and best iPhone deals UK. Or if you're more interested in future iPhones, read about iPhone 7s rumours, iPhone 8 rumours and iPhone 9 rumours.

                iPhone 7 review: Design & build quality
                Let's address the elephant in the room before we go any further. While previous Apple releases, and the usual 'tick-tock' pattern of iPhone updates, led us to expect the iPhone 7 would be a completely redesigned iPhone, in fact it features essentially the same design of the iPhone 6 and 6s. That's the third year now with the same design. Many will say that's a bad thing - but it isn't quite so simple.

                The iPhone 7 looks gorgeous, there's no doubt about that, boasting an aluminium unibody with curved edges and 2.5D glass that helps make the phone sit in your hand much more comfortably, while also providing a nicer experience when swiping from the side of the display. It isn't just standard aluminium like the material used by its competitors, either - the iPhone 7 features 7000 Series aluminium, making the iPhone more durable without adding much weight and giving the device more of a premium feel.

                The iPhone 7 is, physically, the same size and shape as its predecessors, the iPhone 6s and iPhone 6, measuring in at 128.3mm x 67.1mm x 7.1mm, but with a few notable differences. The rear-facing camera and TrueTone flash are bigger, and the eagle-eyed among you will spot that the antenna lines are gone from the back of the iPhone. Well, not gone, but repositioned to the top and bottom of the smartphone to make them less noticeable and provide a cleaner look.

            },
            :like_count => 0,
            :article_id => 2)

Image.create(:headline => 'IPHONE 7',
             :display_order => 1,
             :url => %{https://cdn2.macworld.co.uk/cmsdata/reviews/3644880/iphone_722_thumb.jpg},
             :like_count => 0,
             :article_id => 2)