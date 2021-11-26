class TrackIp 
  def initialize
    @ordered_ips = Hash.new(0)
  end

  def request_handled(ip)
    @ordered_ips[ip] += 1
  end

  def top100
    @ordered_ips.max_by(100, &:last).map{|ip,points| ip}
  end
end


require 'faker'
require 'benchmark'

track_ip = TrackIp.new
sample_ips = (1..20_000).map { Faker::Internet.public_ip_v4_address }
n = 20_000_000
n.times { track_ip.request_handled(sample_ips.sample) }
p track_ip.top100 

p "The execution time:"
Benchmark.bm do |x|
  x.report("request_handled") { n.times { track_ip.request_handled(sample_ips.sample) } }
  x.report("top100")  { track_ip.top100 }
end
