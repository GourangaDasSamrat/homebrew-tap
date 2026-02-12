class TodoCli < Formula
  desc "A simple and efficient CLI tool for managing your todos"
  homepage "https://github.com/GourangaDasSamrat/todo-cli-go"
  version "v1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/GourangaDasSamrat/todo-cli-go/releases/download/v1.0.1/todo-v1.0.1-darwin-amd64.tar.gz"
      sha256 "43574849f89839a87396417bdbd5138d12089e77487a915ba111247e0421f68d"
    else
      url "https://github.com/GourangaDasSamrat/todo-cli-go/releases/download/v1.0.1/todo-v1.0.1-darwin-arm64.tar.gz"
      sha256 "1561a5d4405de444194e30ab5945ef731a3774bb7a66245f5c0bf69c0580d9a8"
    end
  end

  def install
    bin.install "todo-darwin-amd64" => "todo" if Hardware::CPU.intel?
    bin.install "todo-darwin-arm64" => "todo" if Hardware::CPU.arm?
  end

  test do
    assert_match "Todo CLI v1.0.1", shell_output("#{bin}/todo --version")
  end
end
