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
  version "0.2.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/guschiriboga/spec-to-ship/releases/download/v0.2.40/s2s-0.2.40-macos-arm64.tar.gz"
      sha256 "4d8e9066053eda572ae418ff97e733756a99b1ff48beebd983e36caa0798cc15"
    end
    on_intel do
      url "https://github.com/guschiriboga/spec-to-ship/releases/download/v0.2.40/s2s-0.2.40-macos-x64.tar.gz"
      sha256 "4c5823f3456b529a7f368a90db239ba58fa923b69473747f036108b041f85356"
    end
  end

  def install
    bin.install "s2s"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/s2s --version")
  end
end
