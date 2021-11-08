require './lib/terminal'

RSpec.describe Temperature do
  describe 'title' do
    it 'Terminal.title' do
      expect do
        Terminal.title
      end.to output('Temperature converter
').to_stdout
    end
  end
  describe 'temperature_type_warning' do
    it 'Terminal.temperature_type_warning' do
      expect do
        Terminal.temperature_type_warning
      end.to output('You must write only K or F or C
').to_stdout
    end
  end
  describe 'enter_start_scale' do
    it 'Terminal.enter_start_scale' do
      expect do
        Terminal.enter_start_scale
      end.to output('Enter start scale for convert (K, C, F)
').to_stdout
    end
  end
  describe 'enter_end_scale' do
    it 'Terminal.enter_end_scale' do
      expect do
        Terminal.enter_end_scale
      end.to output('Enter end scale for convert (K, C, F)
').to_stdout
    end
  end
  describe 'enter_value' do
    it 'Terminal.enter_value' do
      expect do
        Terminal.enter_value
      end.to output('Enter value for convert
').to_stdout
    end
  end
  describe 'print_result' do
    it 'Terminal.print_result' do
      expect do
        Terminal.print_result 'C', 'K', 100, 373.15
      end.to output('100 C = 373.15 K
').to_stdout
    end
  end
  describe 'get_input' do
    context 'get input'
      before do
        $stdin = StringIO.new("Ab")
      end
    
      after do
        $stdin = STDIN
      end
    
      subject { Terminal.getInput }
      it { is_expected.to eq 'Ab' }
  end
end