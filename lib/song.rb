require 'pry'

require_relative '../lib/concerns/Music_class_methods'
require_relative '../lib/concerns/paramable'

class Song
  extend MusicClassMethods
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

  #def to_param
   # name.downcase.gsub(' ', '-')
  #end
end
