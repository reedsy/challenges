class ForceCreateUserNameIndex < Neo4j::Migrations::Base
  def up
    add_index :User, :name, force: true
  end

  def down
    drop_index :User, :name
  end
end
