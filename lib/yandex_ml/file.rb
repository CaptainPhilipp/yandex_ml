module YandexML
  class File
    include Enumerable

    def initialize(io, logger = nil)
      @io = io
      @logger = logger || Logger.new(STDOUT).tap{ |l| l.level = Logger::INFO }
    end

    def each(&black)
      parser = YandexML::Parser.new(@logger) { |element| black.call element }
      Ox.sax_parse parser, @io.tap(&:rewind)
    end

    def shop
      lazy.detect { |element| element.is_a? YandexML::Shop }
    end

    def offers
      lazy.select { |element| element.is_a? YandexML::Offer }
    end
  end
end
