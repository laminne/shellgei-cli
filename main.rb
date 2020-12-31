if ARGV.count > 2
    p "引数の数が多すぎます"
end

require 'open3'
arg = ARGV[0]
cmd = "curl -X POST -d '{\"code\":\"#{arg}\", \"images\":[]}' 'https://websh.jiro4989.com/api/shellgei'"
stdout = Open3.capture3(cmd)
p stdout
