instru = ActiveSupport::JSON.decode(File.read('db/seeds/instructor.json'))
instru.each do |a|
  Instructor.create!(middle: a['middle'], first: a['first'], last: a['last'],email: a['email'])
end

sub = ActiveSupport::JSON.decode(File.read('db/seeds/subject.json'))
sub.each do |a|
  Subject.create!(name:a['name'],abbreviation:a['abbreviation'],term:a['term'])
end

course = ActiveSupport::JSON.decode(File.read('db/seeds/course.json'))
course.each do |a|
  Ucourse.create!(name:a['name'],description:a['description'],code:a['code'],term:a['term'],credits:a['credits'],requirements:a['requirements'])
end
