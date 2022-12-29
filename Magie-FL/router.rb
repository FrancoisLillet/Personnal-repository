require 'socket'

server = TCPServer.new(1337)

loop do
  client = server.accept

  # Reading and parsing the start line
  request_line = client.readline
  puts "The request line is: #{request_line}"
  method_token, target, version_number = request_line.split

  #Create a Case Statement for all the Endpoints
  case [method_token, target]
  when ["GET", "/fr"]
    # French landing page
    require_relative 'fr/index.rb'
    response_status_code = "200 OK"
    content_type = "text/html"
    response_message = ""

    response_message = fr_index

  when ["GET", "/style/index.css"]
    # Style of the landing page
    response_status_code = "200 OK"
    content_type = "text/css"
    response_message = ""

    response_message = File.read("style/index.css")

else
  response_status_code = "200 OK"
  response_message =  "✅ Received a #{method_token} request to #{target} with #{version_number}"
  content_type = "text/plain"
end

  http_response = <<~MSG
  #{version_number} #{response_status_code}
  Content-Type: #{content_type}; charset=#{response_message.encoding.name}
  Location: /show/birthdays

  #{response_message}
  MSG
  puts "----"
  puts http_response

  client.puts http_response
  client.close
end
