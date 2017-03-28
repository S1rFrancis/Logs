class Log
  attr_reader :page, :client_ip

  def initialize(page, client_ip)
    @page = page
    @client_ip = client_ip
  end

  def to_s
    @page + " " + @client_ip
  end
end
