require 'logs/log'
require 'logs/page_views.rb'

describe Log do
  it "Log objects are populated correctly" do
    logs = []
    File.readlines(Dir.pwd + "/data/test_data.log").each do |line|
      values = line.split(" ")
      logs << Log.new(values[0], values[1])
    end

    expect(logs[6].page).to eq "/products/3"
    expect(logs[6].client_ip).to eq "138.222.28.220"
  end
end
