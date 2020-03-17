class AwsCliOidc < Formula
  desc "CLI tool for retrieving AWS temporary credentials using OIDC provider"
  homepage "https://github.com/mbrtargeting/aws-cli-oidc"
  url "https://github.com/mbrtargeting/aws-cli-oidc/archive/rel-85.tar.gz"
  sha256 "bb30cbae2a1c61232e2aec24708014bd0527536e9757634b4dfeef0ded5bf6b1"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/aws-cli-oidc"
  end
end
