require 'rubygems'
require 'bundler/setup'

# require your gems as usual
$:.unshift('./gen-rb')

require 'profile'
require 'music'
require 'thrift'

username = ARGV.shift or raise 'usage: ruby client.rb username password'
password = ARGV.shift or raise 'usage: ruby client.rb username password'

USER_AGENT = 'iPhone_MusicBox-1.0.0.pt'
IOS_UUID   = '7d23ef18d2c1ec17f38e80c356a380a539a23e3f'

transport = Thrift::HTTPClientTransport.new('http://wimpws3.aspiro.com/wimp/thrift/profile')
protocol = Thrift::BinaryProtocol.new(transport)
profile = Profile::Client.new(protocol)

transport = Thrift::HTTPClientTransport.new('http://wimpws3.aspiro.com/wimp/thrift/music')
protocol = Thrift::BinaryProtocol.new(transport)
music = Music::Client.new(protocol)

puts "Logging in..."
profile_data = profile.login(username, password, 57, USER_AGENT, IOS_UUID)
# puts profile_data.inspect

puts "Getting album info"
album_data = music.getTracksFromAlbum(4552814, profile_data.sessionID)
# puts album_data.inspect

track = album_data[4].trackID
puts "Playing #{track}"

player_data = profile.getNextPlayer(profile_data.sessionID)
# puts player_data.inspect

string = "#{player_data.fileDeliveryHost}/3/22/#{track}||#{player_data.nextKey}"
puts "Playing #{string}"
puts "If you don't have mplayer, this will crash now. Copy the URL above to VLC or something..."
%x{mplayer '#{string}'}
