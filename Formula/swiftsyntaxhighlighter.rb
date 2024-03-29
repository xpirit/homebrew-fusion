# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Swiftsyntaxhighlighter < Formula
  desc "Syntax highlighter for Swift code"
  homepage "https://github.com/NSHipster/SwiftSyntaxHighlighter"
  url "https://github.com/NSHipster/SwiftSyntaxHighlighter.git",
      :tag => "0.1.0", :revision => "6c3e2dca81965f902694cff83d361986ad86f443"
  head "https://github.com/NSHipster/SwiftSyntaxHighlighter.git"
  version "0.1.0"
  sha256 ""

  # depends_on "cmake" => :build
  depends_on :xcode => ["10.0", :build]

  def install
  	system "make", "install", "prefix=#{prefix}"
  end
 
  test do
    system "#{bin}/swift-syntax-highlight" "import Foundation\n"
  end

end
