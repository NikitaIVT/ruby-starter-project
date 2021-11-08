require './lib/temperature'
require './lib/terminal'
require './lib/converter'

RSpec.describe Temperature do
  describe '150 should be a number' do
    subject { Temperature.new.number?(150) }
    it { is_expected.to eq true }
  end
  describe '1b should not be a number' do
    subject { Temperature.new.number?('1b') }
    it { is_expected.to eq false }
  end
  describe 'K input should return true' do
    subject { Temperature.new.allowed_scale?('K') }
    it { is_expected.to eq true }
  end
  describe 'A input should not return true' do
    subject { Temperature.new.allowed_scale?('A') }
    it { is_expected.to eq false }
  end
  describe '150 input should not return true' do
    subject { Temperature.new.allowed_scale?(150) }
    it { is_expected.to eq false }
  end
  describe '#input_from!' do
    context 'Correct from (F)'
    before do
      $stdin = StringIO.new('F')
    end

    after do
      $stdin = STDIN
    end

    subject { Temperature.new.input_from! }
    it { is_expected.to eq 'F' }
  end
  describe '#input_to!' do
    context 'Correct to (K)'
    before do
      $stdin = StringIO.new('K')
    end

    after do
      $stdin = STDIN
    end

    subject { Temperature.new.input_to! }
    it { is_expected.to eq 'K' }
  end
  describe '#input_value!' do
    context 'Correct to (K)'
    before do
      $stdin = StringIO.new('100')
    end

    after do
      $stdin = STDIN
    end

    subject { Temperature.new.input_value! }
    it { is_expected.to eq 100 }
  end
  describe 'convert' do
    it 'check' do
      temp = Temperature.new
      temp.start_value = 100
      temp.from = 'C'
      temp.to = 'K'
      expect(temp.convert!).to eq 373.15
    end
  end
end
