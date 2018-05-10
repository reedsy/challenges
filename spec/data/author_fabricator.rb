require 'fabrication'

Fabricator(:author) do
  name 'Author Name'
end

Fabricator(:eric, from: :author) do
  name 'Eric Bernt'
end

Fabricator(:ernest, from: :author) do
  name 'Ernest Cline'
end

Fabricator(:nicholas, from: :author) do
  name 'Nicholas Sansbury Smith'
end
