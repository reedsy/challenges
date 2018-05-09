RSpec.describe Author, type: :model do
  it { should have_db_column(:name) }

  it { should have_many(:books) }
end
