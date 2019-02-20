module InsightsToolchain
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
