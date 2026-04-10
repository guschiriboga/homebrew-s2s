# frozen_string_literal: true

# Homebrew formula for spec-to-ship (s2s).
#
# SHA256 checksums are placeholders until the first release pipeline run.
# After publishing a new spec-to-ship release:
#   1. Wait for the GitHub Actions workflow to complete and upload assets.
#   2. Download sha256sums.txt from the release page, or run:
#        curl -sL https://github.com/guschiriboga/spec-to-ship/releases/download/v{VERSION}/sha256sums.txt
#   3. Copy the arm64 and x64 checksums into this file.
#   4. Update the `version` field and both `url` fields.
#   5. Commit, push, and verify with: brew audit --formula Formula/s2s.rb
#
# Full checklist: https://github.com/guschiriboga/spec-to-ship/blob/main/docs/homebrew-distribution_en.md
class S2s < Formula
  desc "Governed AI-assisted software delivery orchestrator"
  homepage "https://github.com/guschiriboga/spec-to-ship"
  license "MIT"
  version "0.2.38"

  on_macos do
    on_arm do
      url "https://github.com/guschiriboga/spec-to-ship/releases/download/v0.2.38/s2s-0.2.38-macos-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/guschiriboga/spec-to-ship/releases/download/v0.2.38/s2s-0.2.38-macos-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "s2s"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/s2s --version")
  end
end
