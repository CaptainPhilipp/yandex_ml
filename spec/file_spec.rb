require 'spec_helper'
require 'open-uri'

describe YandexML::File do
  let(:logger) { Logger.new(STDOUT).tap{|l| l.level = (ENV["DEBUG"] ? Logger::DEBUG : Logger::ERROR) } }

  [File.expand_path("files/yandex.xml", File.dirname(__FILE__))].each do |path|
    context "parse #{ path }" do
      let(:file) { YandexML::File.new(open(path), logger)  }

      it do
        expect{ file.elements.each(&:attributes) }.to_not raise_error
        yml_shop = file.shop
        expect(yml_shop.categories.valid?).to eq(true)
        file.offers.each { |offer| expect{ yml_shop.categories.path_to(offer.category_id) }.to_not raise_error }
      end
    end
  end

  if ENV["INTEGRATION"]
    [
      "http://aromati-vostoka.ru/marketplace/22288.xml",
      "http://blasternerf.ru/feed/bnf.yml",
      "http://www.sexysecret.moscow/marketplace/17427.xml",
      "http://love-z.ru/upload/yml-new.1.xml",
      "http://static.ozone.ru/multimedia/yml/facet/div_tech.xml",
      "http://daril-ka.ru/export/yandex_market/15759/cbb9f688",
      "http://point-of-rise.ru/yandexmarket/70217e97-799e-4540-a006-ef8acb44a6fb.xml",
      "http://www.car-dvr.ru/yandex.xml",
      "http://antoshkaspb.ru/yandexmarket/7ff682cd-d656-453a-9506-775350f39455.xml"
    ].each do |path|
      context "parse #{ path }" do
        let(:file) { YandexML::File.new(open(path), logger)  }

        it { expect{ file.elements.take(1000).each(&:attributes) }.to_not raise_error }
      end
    end
  end
end
