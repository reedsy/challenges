RSpec.describe Book, type: :model do
  it { should have_db_column(:title) }
  it { should have_db_column(:published_on).of_type(:date) }
  it { should have_db_column(:author_id) }

  it { should belong_to(:author) }
  it { should have_many(:upvotes) }
  it { should have_many(:follows).through(:author) }
end
