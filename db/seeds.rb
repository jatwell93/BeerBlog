10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}", 
    body: "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing."
  )
end

5.times do |skill|
  Skill.create!(
    title: "My skill #{skill}",
    percent_utilized: 15
  )
end

9.times do |calender|
  Calender.create!(
    title: "Calender title: #{calender}",
    subtitle: "My event",
    body: "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
end