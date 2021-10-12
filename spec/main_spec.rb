require './lib/converter'

RSpec.describe Converter do
  describe 'Convert 100 C to F' do
    subject { Converter.convert_selector(100, 'C', 'F') }
    it { is_expected.to eq 212 }
  end

  describe 'Convert 100 C to K' do
    subject { Converter.convert_selector(100, 'C', 'K') }
    it { is_expected.to eq 373.15   }
  end

  describe 'Convert 100 F to C' do
    subject { Converter.convert_selector(100, 'F', 'C') }
    it { is_expected.to eq 37 }
  end

  describe 'Convert 100 F to K' do
    subject { Converter.convert_selector(100, 'F', 'K') }
    it { is_expected.to eq 310.15 }
  end

  describe 'Convert 100 K to F' do
    subject { Converter.convert_selector(100, 'K', 'F') }
    it { is_expected.to eq -279.67 }
  end

  describe 'Convert 100 K to C' do
    subject { Converter.convert_selector(100, 'K', 'C') }
    it { is_expected.to eq -173.15 }
  end
end

