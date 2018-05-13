class ForceCreateBookTitleIndex < Neo4j::Migrations::Base
  def up
    add_index :Book, :title, force: true
  end

  def down
    drop_index :Book, :title
  end
end
