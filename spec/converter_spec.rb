require './lib/converter'

RSpec.describe Converter do
  describe 'creating' do
    it 'init temp' do
      t_value = 50
      temp = Converter.new
      temp.value = 50
      temp.value == t_value
    end
  end
  describe 'init from and to' do
    it 'init method from' do
      t_from = 'F'
      temp = Converter.new
      temp.from = 'F'
      temp.from == t_from
    end
    it 'init method to' do
      t_from = 'C'
      temp = Converter.new
      temp.from = 'C'
      temp.from == t_from
    end
  end
  describe 'convertation' do
    context '100 C to 100 C' do
      test = 100
      temp = Converter.new
      temp.from = 'C'
      temp.to = 'C'
      temp.value = 100
      subject { temp.convert_selector }
      it { is_expected.to eq test }
    end
    context '100 F to 100 F' do
      test = 100
      temp = Converter.new
      temp.from = 'F'
      temp.to = 'F'
      temp.value = 100
      subject { temp.convert_selector }
      it { is_expected.to eq test }
    end
    context '100 K to 100 K' do
      test = 100
      temp = Converter.new
      temp.from = 'K'
      temp.to = 'K'
      temp.value = 100
      subject { temp.convert_selector }
      it { is_expected.to eq test }
    end
    context '100 C to 373.15 K' do
      test = 373.15
      temp = Converter.new
      temp.from = 'C'
      temp.to = 'K'
      temp.value = 100
      subject { temp.convert_selector }
      it { is_expected.to eq test }
    end
    context '100 C to 212 F' do
      test = 212
      temp = Converter.new
      temp.from = 'C'
      temp.to = 'F'
      temp.value = 100
      subject { temp.convert_selector }
      it { is_expected.to eq test }
    end
    context '0 K to -273.15 C' do
      test = -273.15
      temp = Converter.new
      temp.from = 'K'
      temp.to = 'C'
      temp.value = 0
      subject { temp.convert_selector }
      it { is_expected.to eq test }
    end
    context '100 K to -279.67 F' do
      test = -279.67
      temp = Converter.new
      temp.from = 'K'
      temp.to = 'F'
      temp.value = 100
      subject { temp.convert_selector.round(2) }
      it { is_expected.to eq test }
    end
    context '100 F to 37 C' do
      test = 37
      temp = Converter.new
      temp.from = 'F'
      temp.to = 'C'
      temp.value = 100
      subject { temp.convert_selector }
      it { is_expected.to eq test }
    end
    context '100 F to -279.67 K' do
      test = 310.15
      temp = Converter.new
      temp.from = 'F'
      temp.to = 'K'
      temp.value = 100
      subject { temp.convert_selector }
      it { is_expected.to eq test }
    end
  end
end
