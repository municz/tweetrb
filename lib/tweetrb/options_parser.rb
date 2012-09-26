require 'optparse'
module Tweetrb
  class OptionsParser


    def parse
      self.class.parse(argv)
    end

    def self.parse(argv)
      options = {}
      parser = OptionParser.new do |opts|

        opts.on("-l", "--list", "List tweets") do
          options[:action] = :list_tweets
        end

        opts.on("-c", "--count COUNT", "Count of tweets") do |count|
          options[:count] = count.to_i
        end

      end
      parser.parse!(argv)
      return options
    end
  end
end
