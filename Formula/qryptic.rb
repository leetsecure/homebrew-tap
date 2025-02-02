# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qryptic < Formula
  desc "Qryptic Client to connect to Qryptic gateways"
  homepage "https://github.com/leetsecure/qryptic-client-cli"
  version "0.1.1"
  license "AGPL-3.0"

  depends_on "go"
  depends_on "wireguard-tools"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/leetsecure/qryptic-client-cli/releases/download/v0.1.1/qryptic_v0.1.1_Darwin_x86_64.tar.gz"
      sha256 "9ecc833657a5307e15a7c211f92e72718034eeb59e6df59fadc89762a9d883b1"

      def install
        bin.install "qryptic"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/leetsecure/qryptic-client-cli/releases/download/v0.1.1/qryptic_v0.1.1_Darwin_arm64.tar.gz"
      sha256 "0d5b57a59caaec1849ffc66bfdcfd4314a82d96d6fbd84246ef1a04b14eb5899"

      def install
        bin.install "qryptic"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/leetsecure/qryptic-client-cli/releases/download/v0.1.1/qryptic_v0.1.1_Linux_x86_64.tar.gz"
        sha256 "1fca918c0b9dd7929cda162d3d0c30edf7608be971ed8399a640bf62efbeb0f9"

        def install
          bin.install "qryptic"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/leetsecure/qryptic-client-cli/releases/download/v0.1.1/qryptic_v0.1.1_Linux_arm64.tar.gz"
        sha256 "edec865ed9401dee90d95dedd7e662af70b8fdfc99c64f3c9a3c9f4c4955ea57"

        def install
          bin.install "qryptic"
        end
      end
    end
  end

  test do
    system "#{bin}/qryptic --version"
  end
end
