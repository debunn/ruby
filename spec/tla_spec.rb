#require 'rspec/autorun'
require_relative '../tla'

RSpec.describe TLAConverter do
    let(:clip) { Clipboard.new }

    it "converts ABC" do  
        expect(subject.convert("ABC", false, clip)).to eq("8065666700")
    end
  end