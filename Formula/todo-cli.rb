class TodoCli < Formula
  desc "A simple and efficient CLI tool for managing your todos"
  homepage "https://github.com/GourangaDasSamrat/todo-cli-go"
  version "v1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/GourangaDasSamrat/todo-cli-go/releases/download/v1.0.2/todo-v1.0.2-darwin-amd64.tar.gz"
      sha256 "00da4b70fb78e84cb3f8bbdb9897556be3f464f29d1d52b3655f88ffaf24b905"
    else
      url "https://github.com/GourangaDasSamrat/todo-cli-go/releases/download/v1.0.2/todo-v1.0.2-darwin-arm64.tar.gz"
      sha256 "91dce2500793bae96c2d9ea2dfb66baed97ecb5b7c40a955914829a46557d75e"
    end
  end

  def install
    bin.install "todo-darwin-amd64" => "todo" if Hardware::CPU.intel?
    bin.install "todo-darwin-arm64" => "todo" if Hardware::CPU.arm?
  end

  test do
    assert_match "Todo CLI v1.0.2", shell_output("#{bin}/todo --version")
  end
end
