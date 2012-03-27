class Hash
  # Create a two-dimensional copy of the current hash
  #
  # @option opts [String] :delimiter ('_') Delimiter to use when concatenating keys
  # @option opts [String] :prefix (nil) Key prefix. Set automatically when converting nested hashes recursively. No need to set this manually.
  #
  # @return [Hash]
  def to_2d_hash(opts={})
    output = self.class.new
    self.each do |k, v|
      key = opts[:prefix] ? "#{opts[:prefix]}#{opts[:delimiter]||'_'}#{k}" : k
      if v.is_a? Hash
        output.merge! v.to_2d_hash(opts.merge(prefix: key))
      else
        output[key] = v
      end
    end
    output
  end
end
