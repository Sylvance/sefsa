require 'socket'
require 'test/unit'

class ServerTest< Test::Unit::TestCase
  def test_client_a
    server = TCPSocket.open('localhost', 4242)

    request = 'HELLO from client=A'
    server.puts(request)

    response = server.gets
    assert_equal "Hey, A!\n", response

    server.close
  end
end
