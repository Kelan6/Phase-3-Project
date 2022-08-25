require_relative "./config/environment"
require "sinatra/activerecord/rake"

# desc "Start the server"
# task :server do  
#   if ActiveRecord::Base.connection.migration_context.needs_migration?
#     puts "Migrations are pending. Make sure to run `rake db:migrate` first."
#     return
#   end

#   # rackup -p PORT will run on the port specified (9292 by default)
#   ENV["PORT"] ||= "9292"
#   rackup = "rackup -p #{ENV['PORT']}"

#   # rerun allows auto-reloading of server when files are updated
#   # -b runs in the background (include it or binding.pry won't work)
#   exec "bundle exec rerun -b '#{rackup}'"
# end

desc "Start the console"
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

desc "Check ports"
  task "port", [] do
    exec "bundle exec lsof -wni"
end

desc "Start the server"
  task "server" do
    exec 'bundle exec shotgun --server=thin --host=10.0.3.225 config.ru -p 9292'
  end


# Rake task to run the server
# desc "Start the server."
# task "server", [:port, :use_local_ip_address] do |t, args|
#   default_port = "9292"
#   host = "localhost"
#   if args.use_local_ip_address
#     require 'socket'

#     host = UDPSocket.open {|s| s.connect("64.233.187.99", 1); s.addr.last}
#   end

#   port_arg = args.port
#   port = port_arg ? port_arg : default_port

#   puts "Start server: http://#{host}:#{port}/"
#   start_server_cmd = "bundle exec shotgun --server=thin --host=#{host} config.ru -p #{port}"

#   sh start_server_cmd
# end

# Rake task to run the server
# desc "Start the server."
# task "server" do
#   server = TCPServer.open(3000)    # Socket to listen on port 2000
#   puts "Server started."
#   puts "Running..."
#   loop {                           # Servers run forever
#      Thread.start(server.accept) do |client|
#       puts("Client connected.")
#       puts Time.now
#       client.puts("Connection established.")
#       client.puts(Time.now.ctime)   # Send the time to the client
#       client.puts "Closing the connection."
#       client.close                  # Disconnect from the client
#      end
#   }
# end

# desc "Start the client."
# task "client" do

#   host = 10.0.3.225
#   port = 3000

#   socket = TCPSocket.open(host, port)
#   while line = socket.gets
#     puts line.chop
#   end
#   socket.close

# end


