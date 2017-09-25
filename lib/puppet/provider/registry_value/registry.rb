require 'puppet/type'

Puppet::Type.type(:registry_value).provide(:registry) do
  defaultfor :operatingsystem => :windows
  confine    :operatingsystem => :windows

  def self.instances
    []
  end

  def exists?
    Puppet.debug("Checking the existence of registry value: #{self}")
    found = false
    found
  end

  def create
    Puppet.debug("Creating registry value: #{self}")
  end

  def flush
    # REVISIT - This concept of flush seems different than package provider's
    # concept of flush.
    Puppet.debug("Flushing registry value: #{self}")
  end

  def destroy
    Puppet.debug("Destroying registry value: #{self}")
  end

  def type
    regvalue[:type] || :absent
  end

  def type=(value)
    regvalue[:type] = value
  end

  def data
    regvalue[:data] || :absent
  end

  def data=(value)
    regvalue[:data] = value
  end

  def regvalue
    @regvalue
  end
  
  def path
    @path ||= PuppetX::Puppetlabs::Registry::RegistryValuePath.new(resource.parameter(:path).value)
  end
end
