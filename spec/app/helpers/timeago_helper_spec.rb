require 'spec_helper'
require ROOT + '/app/helpers/timeago_helper'

include ActionView::Helpers

include TimeagoHelper

describe TimeagoHelper do
  before :each do
    self.stub!(:javascript_path).and_return(ROOT + '/spec/fixtures/vendor/assets/javascripts/moment.js')
  end

  it 'context should be V8::Context' do
    expect(context).to be_instance_of V8::Context
  end

  it 'javascript_path should be String' do
    expect(javascript_path).to be_instance_of String
  end

  it 'should eval javascript code' do
    load_context
    expect(relative_time("20111031")).to eq('2 years ago')
  end
end

