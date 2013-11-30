require './lib/ext'

class Euler < Thor
  include Thor::Actions

  desc 'g', 'Generate the skeleton for a problem directory given the directory and underscored name'
  def g(name, directory)
    @directory, @name = directory, name
    template 'test.rb.erb', "#{directory}/#{name}_test.rb"
    template 'klass.rb.erb', "#{directory}/#{name}.rb"
  end

  def self.source_root
    File.join File.dirname(__FILE__), 'lib' 
  end
end
