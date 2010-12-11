# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101208095458) do

  create_table "bookings", :force => true do |t|
    t.integer  "student_id"
    t.integer  "computer_id"
    t.integer  "timeunit_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "computers", :force => true do |t|
    t.string   "block"
    t.integer  "room"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.integer  "studentid"
    t.string   "name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "timeunits", :force => true do |t|
    t.time     "timein"
    t.time     "timeout"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end