require 'spec_helper'

RSpec.describe Yooda do

  context "when configuring the client at a class level" do

    it "use the class-assigned attributes for new instances." do
      Yooda.configure do |config|
        config.apikey = 'yolo'
      end
      client = Yooda::Client.new
      expect(client.apikey).to eq("yolo")
    end

  end

  context "when instantiating a client instance" do

    it "use the correct url for api requests." do
      client = Yooda::Client.new
      expect(client.api_url).to eq("https://api.yooda.com")
    end

    it "retain api key for requests" do
      client = Yooda::Client.new(apikey: "yolo")
      expect(client.apikey).to eq("yolo")
    end

  end

  context "When returning a successful response" do
    it "return the response body as a Hash." do
      # TODO
      # response = Faraday::Response.new(:body => fixture_file('test.json', :parse => true))
      # client   = Yooda::Client.new
      # subject  = client.return_error_or_body(response, response.body)
      # expect(subject).to eql(response.body)
    end
  end

  context "When returning a unsucessful response (error)" do
    it "raise Yooda::Error." do
      # TODO
      # response = Faraday::Response.new(:body => fixture_file('error.json', :parse => true))
      # client   = Yooda::Client.new
      # assert_raises(Yooda::APIError) do
      #   client.return_error_or_body(response, response.body)
      # end
    end
  end

end
