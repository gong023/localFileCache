# FileCache

Very simple and naive file cache. Does not require any environment setting.

Interface similar to memcache, redis. You can be a stepping stone of transition to these cache.

## Installation

    $ gem install fileCache

## Usage
Initialize with cache path.

You can also specify path by `ENV`.

Default path is `/tmp`.

```ruby
require 'fileCache'

cache = FileCache.new("cache_dir")

ENV['FILECACHE_PATH'] = cache_dir
cache = FileCache.new

# cache dir is tmp
cache = FileCache.new
```

Methods are below.
```ruby
> cache.set('hoge', 'fuga')
=> 4
> cache.get('hoge')
=> "fuga"
> cache.set('hoge', 'foo')
=> 3
> cache.get('hoge')
=> "foo"
> cache.delete('hoge')
=> 1
> cache.has?('hoge')
=> false
> cache.flush
=> 0
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
