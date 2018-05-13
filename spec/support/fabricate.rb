class Fabricate
  cattr_accessor :fabrication_store do
    {}
  end

  def self.uniq!(name, overrides = {}, &block)
    if fabrication_store.key?(name)
      klass = Fabrication.manager.schematics[name].klass
      object = klass.find(fabrication_store[name])
      object.update_attributes!(overrides)
    else
      object = Fabricate(name, overrides, &block)
      fabrication_store[name] = object.id
    end
    object
  end
end
