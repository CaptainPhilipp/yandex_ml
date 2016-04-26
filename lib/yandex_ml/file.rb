module YandexML
  class File
    def initialize(io, logger = nil)
      @io = io
      @logger = logger || Logger.new(STDOUT).tap{ |l| l.level = Logger::INFO }
    end

    def elements
      Enumerator.new do |enum|
        Ox.sax_parse YandexML::Parser.new(@logger, enum), @io.tap(&:rewind)
      end
    end

    def shop
      elements.lazy.detect { |element| element.is_a? YandexML::Shop }
    end

    def offers
      elements.lazy.select { |element| element.is_a? YandexML::Offer }
    end
  end
end
