RSpec.describe User, type: :model do
  it { should have_db_column(:name) }
end
