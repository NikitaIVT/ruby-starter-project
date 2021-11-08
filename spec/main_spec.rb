require './lib/temperature_converter'

RSpec.describe 'TemperatureConverter' do
  it 'Converts 0 C to 273.15 K' do
    allow(Terminal).to receive(:gets).and_return("C\n", "K\n", "0\n")
    temp = TemperatureConverter.new
    expect(temp.run).to eq 273.15
  end
end
