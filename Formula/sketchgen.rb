class Sketchgen < Formula
  desc "Command-line tool for generating source code from sketch files"
  homepage "https://github.com/omaralbeik/SketchGen"
  url "https://github.com/omaralbeik/SketchGen.git", tag: "0.1.0"
  version "0.1.0"
  sha256 "c41ba90ec1faf06b92d87aa5cd9ae6161002ce4026553e5b9b9014e13f4895c3"

  depends_on :macos
  depends_on :xcode
  
  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
