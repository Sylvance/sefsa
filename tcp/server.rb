require 'socket'                                        

socket = TCPServer.new(4242)                            

loop do                                                 
  client = socket.accept                                
  request = client.gets                                 

  if result = request.match(/^HELLO from client=(.*?)$/)
    client_id = result[1]                               
    response  = "Hey, #{client_id}!"                     

    client.puts(response)                                                         
  end                                                   

  client.close                                          
end
