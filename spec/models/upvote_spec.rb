RSpec.describe Upvote, type: :model do
  it { should have_db_column(:user_id) }
  it { should have_db_column(:book_id) }

  it { should belong_to(:user) }
  it { should belong_to(:book) }
end
