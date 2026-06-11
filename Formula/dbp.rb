class Dbp < Formula
  desc "Docker buildx build & push helper with registry inspection"
  homepage "https://github.com/jessejwatson/dbp"
  url "https://github.com/jessejwatson/dbp/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "1c19cb46259cf11119ccde754884c7bfd5b4b2067dc9f59f9548086f28f3db82"

  def install
    bin.install "dbp"
  end

  test do
    assert_match "docker build", shell_output("#{bin}/dbp --help")
  end
end
