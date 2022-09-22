# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  [
    {
      email: 'administrator@test.com',
      name: "admin",
      role: "2",
      password: "000000"
    },
  ]
)

Subject.create!(
  [
    {
      id:1,
      subject_name: "英語",
    },
    {
      id:2,
      subject_name: "数学",
    },
    {
      id: 3,
      subject_name: "国語"
    },
    {
      id: 4,
      subject_name: "理科"
    },
    {
      id: 5,
      subject_name: "社会"
    }
    ])

 ChildSubject.create!(
   [
     {
       subject_id: 1,
       child_subject_name: "長文",
     },
     {
       subject_id: 1,
       child_subject_name: "文法",
     },
     {
       subject_id: 2,
       child_subject_name: "1・A",
     },
     {
       subject_id: 2,
       child_subject_name: "2・B",
     },
     {
       subject_id: 2,
       child_subject_name: "3",
     },
     {
       subject_id: 2,
       child_subject_name: "C",
     },
     {
       subject_id: 3,
       child_subject_name: "現代文",
     },
     {
       subject_id: 3,
       child_subject_name: "古文",
     },
     {
       subject_id: 3,
       child_subject_name: "漢文",
     },
     {
       subject_id: 4,
       child_subject_name: "物理",
     },
     {
       subject_id: 4,
       child_subject_name: "化学",
     },
     {
       subject_id: 4,
       child_subject_name: "生物",
     },
     {
       subject_id: 5,
       child_subject_name: "地理",
     },
     {
       subject_id: 5,
       child_subject_name: "世界史",
     },
     {
       subject_id: 5,
       child_subject_name: "日本史",
     },
     {
       subject_id: 5,
       child_subject_name: "公民",
     },
    ]
  )