require "localFileCache/version"

class LocalFileCache
  def initialize(path = '')
    if ! path.empty?
      @file_path = path
    elsif ! ENV['FILECACHE_PATH'].nil? && ! ENV['FILECACHE_PATH'].empty?
      @file_path = ENV['FILECACHE_PATH']
    else
      @file_path = '/tmp'
    end
  end

  def set(key, value)
    FileUtils.mkdir_p("#{@file_path}")
    File.write("#{@file_path}/#{key}", value)
  end

  def get key
    has?(key) ? File.read("#{@file_path}/#{key}") : nil
  end

  def has? key
    File.exists?("#{@file_path}/#{key}")
  end

  def delete key
    File.delete("#{@file_path}/#{key}") if has? key
  end

  def flush
    Dir.foreach(@file_path) do |item|
      next if item == '.' || item == '..'
      delete item
    end
    Dir.rmdir(@file_path)
  end
end
