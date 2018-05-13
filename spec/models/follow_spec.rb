RSpec.describe Follow, type: :model do
  it { should have_db_column(:user_id) }
  it { should have_db_column(:author_id) }
  it { should have_db_column(:created_at) }
  it { should have_db_column(:updated_at) }

  it { should belong_to(:user) }
  it { should belong_to(:author) }
end
