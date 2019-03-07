RSpec.describe Rspec::Traveling do
  subject { Date.today }

  it 'should Date.today to 2019-09-01', travel_to: '2019-09-01' do
    should eq Date.new(2019, 9, 1)
  end

  it 'should Date.today to 2018-01-01', travel_to: '2018-01-01' do
    should eq Date.new(2018, 1, 1)
  end

  describe 'in describe', travel_to: '2018-05-22' do
    it { should eq Date.new(2018, 5, 22) }

    context 'in context', travel_to: '2018-05-31' do
      it { should eq Date.new(2018, 5, 31) }
    end

    it { should eq Date.new(2018, 5, 22) }
  end
end
