require 'zeitwerk'
require 'benchmark'

# This file should be in the root of the project.
# It is self executing, so it will load all dependencies upon require.
class ZeitwerkLoader
  attr_accessor :loader

  def load
    self.loader = Zeitwerk::Loader.new

    #  Add any directories you want autoloaded here.
    loader.push_dir("#{__dir__}/lib")

    loader.setup
  end
end

ZeitwerkLoader.new.load
