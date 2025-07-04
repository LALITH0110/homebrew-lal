class Lal < Formula
  desc "Natural Language to Shell Commands using AI"
  homepage "https://github.com/lalith0110/lal"
  url "https://github.com/lalith0110/lal/archive/v1.0.0.tar.gz"
  sha256 "8c40f9f103e4e7cddea3eda613cec853550520c6e0a30f81665cdb00b9a29a89"
  license "MIT"
  
  depends_on "curl"
  depends_on "jq"

  def install
    # Install the script and make it executable
    bin.install "lal_curl.sh" => "lal"
  end

  test do
    assert_match "LAL - Natural Language to Shell Commands", shell_output("#{bin}/lal --help")
  end

  def caveats
    <<~EOS
      🚀 LAL requires an API key from either OpenAI or Anthropic
      
      Get API keys from:
        • OpenAI: https://platform.openai.com/api-keys
        • Anthropic: https://console.anthropic.com/
      
      Set up your API key:
        export ANTHROPIC_API_KEY="your-key-here"
        or
        export OPENAI_API_KEY="your-key-here"
      
      Add to your shell config (.zshrc, .bashrc) for permanent use.
    EOS
  end
end 
