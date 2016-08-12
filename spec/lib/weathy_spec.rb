require 'spec_helper'

describe Weathy do

  it "should set api_key" do
    Weathy.set_api_key('1e54ebda5c5efd140e96c2c27d5ed223')
    expect($api_key).to eql('1e54ebda5c5efd140e96c2c27d5ed223')
  end

  it "should return weather in Kharkiv" do
    Weathy.set_api_key('1e54ebda5c5efd140e96c2c27d5ed223')
    res = Weathy.weather_by_city('Kharkiv','UA')
    expect(res).to be_truthy
  end

end