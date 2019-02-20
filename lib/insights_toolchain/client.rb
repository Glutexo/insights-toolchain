module InsightsToolchain
  class Client
    def collect
      out = run(['--offline'])
      
      old_path = ClientCollectOutput::get_file_path(out)
      new_path = File.basename(old_path)
      File.rename(old_path, new_path)
      
      uid = Environment::sudo_uid
      gid = Environment::sudo_gid
      File.chown(uid, gid, new_path) if uid && gid
    end
    
    private
    def run(args)
      Process::run(['bin/insights-client'] + args)
    end
  end
end
