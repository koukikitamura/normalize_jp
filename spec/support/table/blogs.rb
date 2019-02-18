ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:'
)
ActiveRecord::Schema.define do
  create_table :blogs, force: true do |t|
    t.string :title
  end
end