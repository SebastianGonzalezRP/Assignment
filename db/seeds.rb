# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# USERS
user1 = User.create!(email: "email1@gmail.com", password: "abc12d3", username: "username1", admin: true)
user2 = User.create!(email: "email2@gmail.com", password: "abc12e3", username: "username2", admin: false)
user3 = User.create!(email: "email3@gmail.com", password: "abc1w23", username: "username3", admin: false)
user4 = User.create!(email: "email4@gmail.com", password: "abc12e3", username: "username4", admin: false)

# PROFILE
profile1 = Profile.create!(user_id: user1.id, name: "Tom", last_name: "LastN1", phone: "12365478", dob: Date.new(2020, 01, 01), address: "way1")
profile2 = Profile.create!(user_id: user2.id, name: "Bob", last_name: "LastN2", phone: "98732154", dob: Date.new(2020, 01, 01), address: "way2")
profile3 = Profile.create!(user_id: user3.id, name: "Tim", last_name: "LastN3", phone: "64123987", dob: Date.new(2020, 01, 01), address: "way3")
profile4 = Profile.create!(user_id: user4.id, name: "Luke", last_name: "LastN4", phone: "82789123", dob: Date.new(2020, 01, 01), address: "way4")

# MESSAGE_USER_ID
message_user_id1 = MessageUser.create!(user_id: user1.id)

# MESSAGE
message1 = Message.create!(user_id: user1.id, message: "Hello", message_user_id: message_user_id1.id)

# RESOURCE
resource1 = Resource.create!(file_type: ".pdf", file: "SomeFile1")
resource2 = Resource.create!(file_type: ".pdf", file: "SomeFile2")
resource3 = Resource.create!(file_type: ".txt", file: "SomeFile3")
resource4 = Resource.create!(file_type: ".png", file: "SomeFile4")
resource5 = Resource.create!(file_type: ".png", file: "SomeFile5")
resource6 = Resource.create!(file_type: ".txt", file: "SomeFile6")

# ORGANIZATION
organization1 = Organization.create!(name: "organization1", description: "Description-1",resource_id: resource1)
organization2 = Organization.create!(name: "organization2", description: "Description-2",resource_id: resource2)

# MEMBER
member1 = Member.create!(user_id: user1.id, organization_id: organization1.id, rol: "user")
member2 = Member.create!(user_id: user2.id, organization_id: organization1.id, rol: "member")
member3 = Member.create!(user_id: user3.id, organization_id: organization1.id, rol: "member")
member4 = Member.create!(user_id: user1.id, organization_id: organization2.id, rol: "member")
member5 = Member.create!(user_id: user4.id, organization_id: organization2.id, rol: "admin")
member6 = Member.create!(user_id: user3.id, organization_id: organization2.id, rol: "member")

# EVENT
event1 = Event.create!(title: "La momia", description: "Description 1", event_flag: false, user_id: user1.id, private: true, resource_id: resource2.id, location: "new york", date: DateTime.new(2020, 4, 20, 4, 30))
event2 = Event.create!(title: "Busqueda del tesoro", description: "Description2", event_flag: false, user_id: user1.id, private: true, resource_id: resource4.id, location: "Alabama", date: DateTime.new(2020, 4, 20, 4, 30))
event3 = Event.create!(title: "Tarzan", description: "Description 3", event_flag: false, user_id: user1.id, private: true, resource_id: resource2.id, location: "San Francisco", date: DateTime.new(2020, 4, 20, 4, 30))
event4 = Event.create!(title: "Mas barato por docena", description: "Description 4", event_flag: false, user_id: user2.id, private: true, resource_id: resource4.id, location: "Las Vegas", date: DateTime.new(2020, 4, 20, 4, 30))
event5 = Event.create!(title: "Tiburon", description: "Description 5", event_flag: false, user_id: user2.id, private: true, resource_id: resource2.id, location: "Lake Tahoe", date: DateTime.new(2020, 4, 20, 4, 30))
event6 = Event.create!(title: "Proyecto x", description: "Description 6", event_flag: false, user_id: user2.id, private: true, resource_id: resource4.id, location: "Davis", date: DateTime.new(2020, 4, 20, 4, 30))
event7 = Event.create!(title: "Destruccion total", description: "Description  7", event_flag: false, user_id: user3.id, private: true, resource_id: resource2.id, location: "San Diego", date: DateTime.new(2020, 4, 20, 4, 30))
event8 = Event.create!(title: "Hata el amanecer", description: "Description 8", event_flag: false, user_id: user2.id, private: true, resource_id: resource4.id, location: "Sausalito", date: DateTime.new(2020, 4, 20, 4, 30))

# DATE_OPTION
date_option1 = DateOption.create!(start_date: DateTime.new(2020, 4, 20, 4, 30), end_date: DateTime.new(2020, 4, 20, 6, 30), event_id:event1.id)
date_option2 = DateOption.create!(start_date: DateTime.new(2020, 5, 20, 4, 30), end_date: DateTime.new(2020, 5, 20, 6, 30), event_id:event2.id)
date_option3 = DateOption.create!(start_date: DateTime.new(2020, 4, 21, 4, 30), end_date: DateTime.new(2020, 4, 21, 6, 30), event_id:event3.id)
date_option4 = DateOption.create!(start_date: DateTime.new(2020, 5, 21, 4, 30), end_date: DateTime.new(2020, 5, 21, 6, 30), event_id:event4.id)


# EVENT_LIST_USER
elu1 = EventListUser.create!(user_id: user1.id, event_id: event1.id)
elu2 = EventListUser.create!(user_id: user2.id, event_id: event1.id)
elu3 = EventListUser.create!(user_id: user3.id, event_id: event1.id)
elu4 = EventListUser.create!(user_id: user4.id, event_id: event1.id)
elu5 = EventListUser.create!(user_id: user1.id, event_id: event2.id)
elu6 = EventListUser.create!(user_id: user2.id, event_id: event2.id)
elu7 = EventListUser.create!(user_id: user3.id, event_id: event2.id)
elu8 = EventListUser.create!(user_id: user4.id, event_id: event2.id)
elu9 = EventListUser.create!(user_id: user1.id, event_id: event3.id)
elu10 = EventListUser.create!(user_id: user2.id, event_id: event4.id)
elu11 = EventListUser.create!(user_id: user3.id, event_id: event6.id)
elu12 = EventListUser.create!(user_id: user4.id, event_id: event7.id)
elu13 = EventListUser.create!(user_id: user1.id, event_id: event8.id)
elu14 = EventListUser.create!(user_id: user1.id, event_id: event7.id)

# EVENT_LIST_ORGANIZATION
elo1 = EventListOrganization.create!(organization_id: organization1.id, event_id: event2.id)

# DATE_VOTE
dv1 = DateVote.create!(user_id: user1.id, date_option_id: date_option1.id)
dv2 = DateVote.create!(user_id: user2.id, date_option_id: date_option1.id)
dv3 = DateVote.create!(user_id: user2.id, date_option_id: date_option3.id)
dv4 = DateVote.create!(user_id: user1.id, date_option_id: date_option4.id)
dv5 = DateVote.create!(user_id: user3.id, date_option_id: date_option4.id)
dv1 = DateVote.create!(user_id: user4.id, date_option_id: date_option3.id)

# COMMENT
comment1 = Comment.create!(user_id: user1.id, text_comment: "nice event", event_id: event1.id)
comment2 = Comment.create!(user_id: user2.id, text_comment: "hi this is a super text", event_id: event1.id)
comment3 = Comment.create!(user_id: user3.id, text_comment: "Good Bye", event_id: event2.id)

# COMMENT_REPLY
comment_reply2 = CommentReply.create!(user_id: user2.id, text_comment_reply: "hi my name is ah my name is ah", comment_id: comment2.id)
comment_reply1 = CommentReply.create!(user_id: user1.id, text_comment_reply: "this is a text", comment_id: comment1.id)
