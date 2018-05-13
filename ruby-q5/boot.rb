require 'neo4j'
require 'faraday'
require 'neo4j/core/cypher_session/adaptors/http'

class Boot
  def self.ready?
    Faraday.get(ENV['NEO4J_URL']).status == 200
  rescue Faraday::ConnectionFailed
    false
  end
end

sleep(1) until Boot.ready?

adaptor = Neo4j::Core::CypherSession::Adaptors::HTTP.new(ENV['NEO4J_URL'])
Neo4j::ActiveBase.on_establish_session do
  Neo4j::Core::CypherSession.new(adaptor)
end
