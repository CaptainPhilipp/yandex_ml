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
  end
end
