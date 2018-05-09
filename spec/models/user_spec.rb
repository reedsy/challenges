RSpec.describe User, type: :model do
  it { should have_db_column(:name) }

  it { should have_many(:follows) }
  it { should have_many(:authors).through(:follows) }
  it { should have_many(:upvotes) }
  it { should have_many(:books).through(:upvotes) }
end
