require 'net/ssh'
require 'net/scp'
require 'fileutils'



#* timeout unit is second
# ------------------------------------------------------------------------------

require 'dotenv'
Dotenv.load(".env", ".env.default", "~/.env")
# ------------------------------------------------------------------------------

options = {:password => ENV['PASSWORD'], :timeout=>5, :verbose => :error}

Net::SSH.start(ENV['HOST'], ENV['USERNAME'],  options) do |ssh|
  # ssh.scp.upload!("/tmp/seed-e9f77878-3330-9752-f49f-1ddb7f21462d.iso", "/tmp")
  puts "connected!"
end
