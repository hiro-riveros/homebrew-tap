class GoWebgen < Formula
  desc "CLI para generar scaffolds de proyectos web en Go"
  homepage "https://github.com/hiro-riveros/go-webgen"
  version "1.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/hiro-riveros/go-webgen/releases/download/1.1.1/go-webgen_Darwin_arm64.tar.gz"
    sha256 "c19ca9c6c75913d67127eea6464c707607d57ed1c93037c3c1a81eb2e168d679"
  else
    url "https://github.com/hiro-riveros/go-webgen/releases/download/1.1.1/go-webgen_Darwin_x86_64.tar.gz"
    sha256 "445806fa2ff934cd4778103b6cf4976c80d7eba128f15729f2f85d870f2998a4"
  end

  def install
    bin.install "go-webgen"
  end

  test do
    system "#{bin}/go-webgen", "--help"
  end
end
