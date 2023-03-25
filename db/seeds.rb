# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# users
# create_table "messages", force: :cascade do |t|
#     t.string "name"
#     t.string "email"
#     t.string "subject"
#     t.string "body"
#     t.integer "sender_id", null: false
#     t.integer "recipient_id", null: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["recipient_id"], name: "index_messages_on_recipient_id"
#     t.index ["sender_id"], name: "index_messages_on_sender_id"
#   end

#   create_table "profiles", force: :cascade do |t|
#     t.string "name"
#     t.string "email"
#     t.string "username"
#     t.string "headline"
#     t.string "bio"
#     t.string "location"
#     t.string "profile_image"
#     t.string "social_github"
#     t.string "social_twitter"
#     t.string "social_linkedin"
#     t.string "social_youtube"
#     t.string "social_website"
#     t.integer "user_id", null: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["user_id"], name: "index_profiles_on_user_id"
#   end

#   create_table "projects", force: :cascade do |t|
#     t.string "title"
#     t.string "description"
#     t.string "featured_image"
#     t.string "demo_link"
#     t.string "source_code"
#     t.integer "profile_id", null: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["profile_id"], name: "index_projects_on_profile_id"
#   end

#   create_table "skills", force: :cascade do |t|
#     t.string "name"
#     t.string "description"
#     t.integer "profile_id", null: false
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["profile_id"], name: "index_skills_on_profile_id"
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "username"
#     t.string "email"
#     t.string "first_name"
#     t.string "last_name"
#     t.boolean "is_staff"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   add_foreign_key "messages", "recipients"
#   add_foreign_key "messages", "senders"
#   add_foreign_key "profiles", "users"
#   add_foreign_key "projects", "profiles"
#   add_foreign_key "skills", "profiles"
puts "Creating users..."
User.create!([
    {
        username: "admin",
        email: "admin@gmail.com",
        first_name: "Admin",
        last_name: "Admin",
        is_staff: true
    },
    {
        username: "user",
        email: "user@gmail.com",
        first_name: "User",
        last_name: "User",
        is_staff: false
    },
    {
        username: "user2",
        email: "user2@gmail.com",
        first_name: "User2",
        last_name: "User2",
        is_staff: false
    },
    {
        username: "user3",
        email: "user3@gmail.com",
        first_name: "User3",
        last_name: "User3",
        is_staff: false
    },
])

puts "Creating profiles..."
Profile.create!([
    {
        name: "Admin",
        email: "Admin@gmail.com",
        username: "admin",
        headline: "Admin",
        bio: "Admin",
        location: "Admin",
        profile_image: "https://i.imgur.com/1Q9ZQ2M.png",
        social_github: "bla",
        social_twitter: "bla",
        social_linkedin: "bla",
        social_youtube: "bla",
        social_website: "bla",
        user_id: 1
    },
    {
        name: "User",
        email: "",
        username: "user",
        headline: "User",
        bio: "User",
        location: "User",
        profile_image: "https://i.imgur.com/1Q9ZQ2M.png",
        social_github: "bla",
        social_twitter: "bla",
        social_linkedin: "bla",
        social_youtube: "bla",
        social_website: "bla",
        user_id: 2
    },

    {
        name: "User2",
        email: "",
        username: "user2",
        headline: "User2",
        bio: "User2",
        location: "User2",
        profile_image: "https://i.imgur.com/1Q9ZQ2M.png",
        social_github: "bla",
        social_twitter: "bla",
        social_linkedin: "bla",
        social_youtube: "bla",
        social_website: "bla",
        user_id: 3
    },

    {
        name: "User3",

        email: "",
        username: "user3",
        headline: "User3",
        bio: "User3",
        location: "User3",
        profile_image: "https://i.imgur.com/1Q9ZQ2M.png",
        social_github: "bla",
        social_twitter: "bla",
        social_linkedin: "bla",
        social_youtube: "bla",
        social_website: "bla",
        user_id: 4
    },
])

puts "Creating skills..."
Skill.create!([
    {
        name: "Ruby",
        description: "Ruby",
        profile_id: 1
    },
    {
        name: "Ruby",
        description: "Ruby",
        profile_id: 2
    },
    {
        name: "Ruby",
        description: "Ruby",
        profile_id: 3
    },
    {
        name: "Ruby",
        description: "Ruby",
        profile_id: 4
    },
])

puts "Creating projects..."
Project.create!([
    {
        title: "Project1",
        description: "Project1",
        featured_image: "https://i.imgur.com/1Q9ZQ2M.png",
        demo_link: "https://i.imgur.com/1Q9ZQ2M.png",
        source_code: "https://i.imgur.com/1Q9ZQ2M.png",
        profile_id: 1
    },
    {
        title: "Project2",
        description: "Project2",
        featured_image: "https://i.imgur.com/1Q9ZQ2M.png",
        demo_link: "https://i.imgur.com/1Q9ZQ2M.png",
        source_code: "https://i.imgur.com/1Q9ZQ2M.png",
        profile_id: 2
    },
    {
        title: "Project3",
        description: "Project3",
        featured_image: "https://i.imgur.com/1Q9ZQ2M.png",
        demo_link: "https://i.imgur.com/1Q9ZQ2M.png",
        source_code: "https://i.imgur.com/1Q9ZQ2M.png",
        profile_id: 3
    },
    {
        title: "Project4",
        description: "Project4",
        featured_image: "https://i.imgur.com/1Q9ZQ2M.png",
        demo_link: "https://i.imgur.com/1Q9ZQ2M.png",
        source_code: "https://i.imgur.com/1Q9ZQ2M.png",
        profile_id: 4
    },
])

puts "Creating messages..."
Message.create!([
    {
       
        body: "Message1",
        sender_id: 1,
        recipient_id: 2
    },
    {
        body: "Message2",
        sender_id: 1,
        recipient_id: 3
    },
    {
        
        body: "Message3",
        sender_id: 1,
        recipient_id: 4
    },
    {
        
        body: "Message4",
        sender_id: 2,
        recipient_id: 1
    },
    {
        body: "Message5",
        sender_id: 2,
        recipient_id: 3
    },
    {
        body: "Message6",
        sender_id: 2,
        recipient_id: 4
    },
    {

        body: "Message7",
        sender_id: 3,
        recipient_id: 1
    },
])


