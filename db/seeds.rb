users = [ { first_name: 'Jeff', last_name: 'Cohen', email: 'jeff@starterleague.com'}, 
          { first_name: 'Neal', last_name: 'Sales-Griffin', email: 'neal@starterleague.com'},
          { first_name: 'Mike', last_name: 'McGee', email: 'mike@starterleague.com'},
          { first_name: 'Vince', last_name: 'Cabansag', email: 'vince@starterleague.com'},
          { first_name: 'Arvin', last_name: 'Dang', email: 'arvin@starterleague.com'},
          { first_name: 'Caity', last_name: 'Moran', email: 'caity@starterleague.com'} ]

User.destroy_all
puts 'Destroying all users in database.'

users.each do |user|
  User.create first_name: user[:first_name], last_name: user[:last_name], email: user[:email]
  new_user = User.last
  puts "Created #{new_user.first_name} #{new_user.last_name} with an email address of #{new_user.email}"
end

Post.destroy_all
puts 'Destroying all posts in database.'

def show_last_post
  post = Post.last
  puts "Creating new post: #{post.title}"
end

Post.create title: 'The Ruby Playground',
            content: "Our Web Development students often tell me that the program is pretty intense.  It's above and beyond the 10 hours of class time you may have heard about.  When I've been asked to describe our program, I sometimes say the word *immersive* but even that doesn't do it justice. During student candidate interviews, applicants learn about the sheer depth and weight of the course: an intense class over three hours long, three times a week; a couple of weekend hackathons; working with colleagues on a weekly basis on class projects; demo day team formation and application building; lunchtime seminars and workshops on both technical and entreprenuerial topics; and of course, the challenge of building and rebuilding applications that we send out as challenges, in a near-continuous stream over the 11-week haul toward Demo Day. The most oft-repeated phrase I hear from students at the After Demo Day Party is (paraphrasing), 'Man, that was a TON of work. I don't know how I got through it.... and I learned more than I could have imagined.' So this quarter, what did I do?  I piled it on higher with the *Ruby Playground*: a 90-minute session once or twice a week.  It's all geared around one my central philosophies that one of the best ways to learn about something is to play with it. When I was a little kid, I don't recall the preschool teacher giving a lecture on how to use the sandbox.  The best way to learn about a sandbox is, well, to _play in it_.  Trial and error.  Continuous feedback.  Serendipity.  What does the sand do if you run it between your fingers?  What happens if you try to pile it up too high?  Notice how some of it will run down the sides.  Oops, I spilled some water in the sand - _wait a minute, that's cool!  The sand sticks together! The new Playground is intended to provide extra time for Q&A, and some fun challenges, like writing an app to deal hands of poker, a rock-paper-scissors game against the computer, and a dice game.  We will also be learning about object-oriented theory , some tricks in the Rails console, and how to use inspect on HTTP traffic traveling through your computer.  And like any good playground, there won't just be one kind of apparatus.  I have a lot of fun ideas for this quarter, including some basic artifical intelligence algorithms and perhaps playing with an Arduino kit. So if you're [applying for the Web Development course](http://www.starterleague.com/webdev), get ready for a full-time program designed to challenge you, stretch your imagination, and unlock something new in your life. And now it even comes with a playground!  What could be better than that?",
            user_id: User.where(first_name: 'Jeff').first.id

show_last_post

Post.create title: 'The Starter League x Defy Bags',
            content: "If you have been in the Chicago tech community over the past 18 months, chances are you have seen a Code Academy or Starter League backpack. While we have been extremely satisfied with our customized [Timbuk2](http://www.timbuk2.com/tb2/) bags, Jason Fried told us about another awesome bag-making company headquartered right here in Chicago. And as always, Jason made an amazing - yet simple - pitch: _'The Starter League is Chicago. Defy Bags is Chicago. Your students need these bags.'_ As we learned more about [Defy Bags](http://defybags.com) we agreed. Not only do they make high-quality messenger bags and backpacks, their [story is equally amazing](http://www.defybags.com/story/). Founder Chris Tag grew up in Dayton, Ohio where he lived around people who built things from the ground up. In 2008, Chris decided to leave the advertising world and start his own company. Defy Bags and The Starter League share the same values. Emphasis on craftsmanship. Quality over quantity. Taking old tools and methods to creating something meaningful. <img src='http://currencyofhappiness.com/wp-content/uploads/2013/04/mail_image_preview-3.jpg' alt='Starter League Dope Backpack by Defy Bags'> Last week we were able to give our Spring 2013 students customized [Dope Backpacks](http://www.defybags.com/dope-backpack/). Dope Backpacks you say? Yes, this company makes a bag called the Dope Backpack. **And our students love them.** <img src='http://currencyofhappiness.com/wp-content/uploads/2013/04/Screen-Shot-2013-04-25-at-1.39.39-PM.png' alt='students tweet about how awesome their Dope Backpack is.'> <img src='http://currencyofhappiness.com/wp-content/uploads/2013/04/Screen-Shot-2013-04-25-at-1.40.37-PM.png' alt='students are battle-testing their Dope Backpack and it comes out as a winner.'> We are thankful to Chris Tag, Dana Hortick, and the rest of the Defy Bags team for making these Starter League backpacks. <img src='http://currencyofhappiness.com/wp-content/uploads/2013/04/mail_image_preview-1.jpg' alt='close-up shot of The Starter League Dope Backpack.'>",
            user_id: User.where(last_name: 'McGee').first.id

show_last_post
