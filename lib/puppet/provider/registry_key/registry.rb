Puppet::Type.type(:registry_key).provide(:registry) do


  def self.instances
    []
  end

  def create
    Puppet.debug("Creating registry key #{self}")
  end

  def exists?
    Puppet.debug("Checking existence of registry key #{self}")
  end

  def destroy
    Puppet.debug("Destroying registry key #{self}")

    raise ArgumentError, "Cannot delete root key: #{path}" unless subkey
  end

  def values
    names = []
    names
  end

  private

  def path
    @path ||= PuppetX::Puppetlabs::Registry::RegistryKeyPath.new(resource.parameter(:path).value)
  end
end
