class PopulateUserData < ActiveRecord::Migration[7.2]
  def change
    users = [
      { email: 'admin1@codemancers.com', password: 'admin@123', first_name: 'Admin', last_name: 'User1' },
      { email: 'admin2@codemancers.com', password: 'admin@123', first_name: 'Admin', last_name: 'User2' },
      { email: 'admin3@codemancers.com', password: 'admin@123', first_name: 'Admin', last_name: 'User3' },
      { email: 'admin4@codemancers.com', password: 'admin@123', first_name: 'Admin', last_name: 'User4' }
    ]

    users.each do |user|
      user = User.create!(user)
    end
  end
end
