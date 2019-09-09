require 'formula'

class UnsignXcode < Formula
  desc "test"
  homepage ""
  url "https://github.com/xpirit/unsign-xcode/archive/v1.0.1.tar.gz"
  sha256 "2c09262e3fd87c4d42d4a3d1317d1b6e26fe5736f462332a4c09da98476c119e"

  # depends_on "cmake" => :build

  def install
       gettext = Formula["gettext"]
       puts "> #{gettext}"
       system "echo", ENV["HOMEBREW_PREFIX"]
       bin.install "unsign-xcode.sh"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test unsign-xcode`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
