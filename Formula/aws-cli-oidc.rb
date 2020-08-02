class AwsCliOidc < Formula
  desc "CLI tool for retrieving AWS temporary credentials using OIDC provider"
  homepage "https://github.com/mbrtargeting/aws-cli-oidc"
  url "https://github.com/mbrtargeting/aws-cli-oidc/archive/rel-95.tar.gz"
  sha256 "59aed7ea14863c2d012a59b09321bc1e1692bb032c1a15e44aa3bb9c0f7e0b89"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/aws-cli-oidc"
    bin.install "bin/aws-sign-in"
  end
end
