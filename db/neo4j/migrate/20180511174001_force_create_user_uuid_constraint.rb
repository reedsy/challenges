class ForceCreateUserUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :User, :uuid, force: true
  end

  def down
    drop_constraint :User, :uuid
  end
end
