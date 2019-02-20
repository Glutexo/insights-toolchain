module InsightsToolchain
  class Client
    def collect
      out = run(['--no-upload'])
      
      old_path = ClientCollectOutput::get_file_path(out)
      new_path = File.basename(old_path)
      File.rename(old_path, new_path)
      
      uid = Environment::sudo_uid
      gid = Environment::sudo_gid
      File.chown(uid, gid, new_path) if uid && gid
    end
    
    private
    def run(args)
      Process::run(['insights-client'] + args)
    end
  end

  class ClientCollectOutput
    class << self
      def get_file_path(output)
        lines = String::split_lines(output)
        match = lines.last.match(/^Archive saved at (.+)$/)
        raise ArgumentError.new('File path not found.') if match.nil?
        match[1]
      end
    end
  end
end
