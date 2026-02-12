class TodoCli < Formula
  desc "A simple Todo CLI built in Go"
  homepage "https://github.com/GourangaDasSamrat/todo-cli-go"
  url "https://github.com/GourangaDasSamrat/todo-cli-go/releases/download/v1.0.0/todo-v1.0.0-darwin-amd64.tar.gz"
  sha256 "02631fd71136a464c360b2d007f0fbe5b0f5b2273f45395168a064c1519042b9" # The action will update this automatically later
  license "MIT"

  def install
    bin.install "todo-darwin-amd64" => "todo"
  end

  test do
    system "#{bin}/todo", "--version"
  end
end
