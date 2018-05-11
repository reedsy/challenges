require 'neo4j'
require 'neo4j/core/cypher_session/adaptors/http'

adaptor = Neo4j::Core::CypherSession::Adaptors::HTTP.new(ENV['NEO4J_URL'])
Neo4j::ActiveBase.on_establish_session do
  Neo4j::Core::CypherSession.new(adaptor)
end
