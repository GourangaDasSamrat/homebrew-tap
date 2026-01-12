class CliTodoApp < Formula
  desc "Feature-rich, cross-platform CLI Todo app written in modern C++"
  homepage "https://github.com/GourangaDasSamrat/cli-todo-app"
  version "1.0.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/GourangaDasSamrat/cli-todo-app/releases/download/v1.0.1/todo-app-v1.0.1-macos-arm64"
    sha256 "af94d193a98c2ebddc0163d2290c1659ffa165ba91fcfe873e15cd167df1cf77"
  else
    url "https://github.com/GourangaDasSamrat/cli-todo-app/releases/download/v1.0.1/todo-app-v1.0.1-macos-amd64"
    sha256 "af94d193a98c2ebddc0163d2290c1659ffa165ba91fcfe873e15cd167df1cf77"
  end

  def install
    bin.install "todo-app-v1.0.1-macos-arm64" => "todo-app" if Hardware::CPU.arm?
    bin.install "todo-app-v1.0.1-macos-amd64" => "todo-app" if Hardware::CPU.intel?
  end

  test do
    system "#{bin}/todo-app", "--version"
  end
end
