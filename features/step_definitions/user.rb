Given /^Exists an user with profile:$/ do |table|
  table.hashes.each do |row|
    user = FactoryGirl.create :user, email: row["email"]
    profile  = FactoryGirl.create :profile, first_name: row["first_name"], last_name: row["last_name"], company: row["company"], user: user
  end
end
