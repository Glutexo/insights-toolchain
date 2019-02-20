require('open3')

module InsightsToolchain
  class Process
    class << self
      def run(args)
        out = ''
        Open3.popen3(*args) do |stdin, stdout, stderr, wait_thr|
          out << stderr.read
        end
        out
      end
    end
  end
  
  class String
    class << self
      def split_lines(str)
        str.split("\n").map(&:chomp)
      end
    end
  end
  
  class Environment
    class << self
      def sudo_uid
        Value::to_i(ENV["SUDO_UID"])
      end
      
      def sudo_gid
        Value::to_i(ENV["SUDO_GID"])
      end
    end
  end
  
  class Value
    class << self
      def to_i(str)
        str.nil? ? nil : str.to_i
      end
    end
  end
end