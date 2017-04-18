3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}", 
    body: "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.",
    topic_id: Topic.last.id
  )
end

5.times do |skill|
  Skill.create!(
    title: "My skill #{skill}",
    percent_utilized: 15
  )
end

8.times do |calender|
  Calender.create!(
    title: "Calender title: #{calender}",
    subtitle: "Beer tastings",
    body: "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
end

1.times do |calender|
  Calender.create!(
    title: "Calender title: #{calender}",
    subtitle: "Master class",
    body: "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
    )
    
3.times do |technology|
  Technology.create!(
    name: "Technology #{technology}",
    calender_id: Calender.last.id
  )
end
end