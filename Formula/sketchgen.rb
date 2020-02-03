class Sketchgen < Formula
  desc "Command-line tool for generating source code from sketch files"
  homepage "https://github.com/omaralbeik/SketchGen"
  url "https://github.com/omaralbeik/SketchGen"
  version "0.1.0"
  sha256 "c41ba90ec1faf06b92d87aa5cd9ae6161002ce4026553e5b9b9014e13f4895c3"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", ".", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/sketchgen" "import Foundation\n"
  end
end
