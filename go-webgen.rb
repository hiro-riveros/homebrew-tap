class GoWebgen < Formula
  desc "CLI para generar scaffolds de proyectos web en Go"
  homepage "https://github.com/hiro-riveros/go-webgen"
  version "1.2.0"

  if Hardware::CPU.arm?
    url "https://github.com/hiro-riveros/go-webgen/releases/download/1.2.0/go-webgen_Darwin_arm64.tar.gz"
    sha256 "f3623775b203c320208cbaa30b067d293f7f1d186c244ec2e01a364f187b7cff"
  else
    url "https://github.com/hiro-riveros/go-webgen/releases/download/1.2.0/go-webgen_Darwin_x86_64.tar.gz"
    sha256 "e0570bc159b897288233439ee654ad22394a84af93897b292fe0c7e6bc5f37ce"
  end

  def install
    bin.install "go-webgen"
  end

  test do
    system "#{bin}/go-webgen", "--help"
  end
end
