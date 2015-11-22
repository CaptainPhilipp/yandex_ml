require 'spec_helper'

describe YandexML::File do
  let(:path) { File.expand_path("support/example.xml", File.dirname(__FILE__)) }
  let(:file) { YandexML::File.new open(path) }

  it { expect{ file.map(&:attributes) }.to_not raise_error }
end
