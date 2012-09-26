$:.unshift(File.expand_path("../lib", File.dirname(__FILE__)))

require 'test/unit'
require 'tweetrb/options_parser'

class ParseOptionsTest < Test::Unit::TestCase
  def test_list_tweets_option
    argv = ["-l"]
    options = Tweetrb::OptionsParser.parse(argv)
    assert_equal({:action => :list_tweets}, options)
  end

  def test_count_option
    argv = ["-c", "10"]
    options = Tweetrb::OptionsParser.parse(argv)
    assert_equal({:count => 10}, options)
  end
end
