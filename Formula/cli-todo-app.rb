class CliTodoApp < Formula
  desc "Feature-rich, cross-platform CLI Todo app written in modern C++"
  homepage "https://github.com/GourangaDasSamrat/cli-todo-app"
  url "https://github.com/GourangaDasSamrat/cli-todo-app/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "8a4fee6c947026205d1c29abc5acf517832a823b0e0835f179c392bc91d16b1e"
  license "MIT"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", "-DCMAKE_BUILD_TYPE=Release"
    system "cmake", "--build", "build"
    bin.install "build/todo-app"
  end
end
