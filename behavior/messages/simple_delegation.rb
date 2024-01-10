# frozen_string_literal: true

# Q: How do you invoke a disinterested delegate?
# A: Delegate messages unchanged.
class SimpleDelegation; end

# Ruby's standard lib has a SimpleDelegator class!
require 'delegate'

class Album
  attr_accessor :title, :artist, :year

  def initialize(artist, title, year)
    @artist = artist
    @title = title
    @year = year
  end
end

class AlbumInfo < SimpleDelegator
  def print_info()
    puts "#{artist}, #{year}, #{title}"
  end
end

# any methods not defined on `AlbumInfo` will be delegated to Album
album = AlbumInfo.new(Album.new('Metallica', 'And Justice For All', 1988))
album.print_info
