require 'logs/page_views.rb'

describe PageViews do
  logs = []
  File.readlines(Dir.pwd + "/data/test_data.log").each do |line|
    values = line.split(" ")
    logs << Log.new(values[0], values[1])
  end
  page_views = PageViews.new(logs)

  it "returns the view count for each page listed in the log" do
    views = page_views.views

    expect(views["/home"]).to eq 5
    expect(views["/contact/"]).to eq 2
    expect(views["/index"]).to eq 1
    expect(views["/about"]).to eq 2
    expect(views["/products/3"]).to eq 1
  end

  it "returns the Uniques view count for each page listed in the log" do
    views = page_views.uniqueViews

    expect(views["/home"]).to eq 2
    expect(views["/contact/"]).to eq 2
    expect(views["/index"]).to eq 1
    expect(views["/about"]).to eq 2
    expect(views["/products/3"]).to eq 1
  end
end
