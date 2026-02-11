# Homebrew Tap 🍺

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A curated collection of Homebrew formulae for command-line tools and developer utilities maintained by Gouranga Das Samrat. All formulae are built from official source releases and adhere to Homebrew best practices.

## 📦 Installation

To tap this repository:

```bash
brew tap gourangadassamrat/tap
```

Once tapped, you can install any formula using:

```bash
brew install <formula-name>
```

## 🛠️ Available Formulae

### cli-todo-app

A feature-rich, cross-platform command-line Todo application written in modern C++ (C++17).

**Installation:**
```bash
brew install cli-todo-app
```

**Source:** [github.com/GourangaDasSamrat/cli-todo-app](https://github.com/GourangaDasSamrat/cli-todo-app)

### todo-cli-go

A powerful, feature-rich command-line todo application built with Go.

**Installation:**
```bash
brew install todo-cli
```

**Source:** [github.com/GourangaDasSamrat/todo-cli-go](https://github.com/GourangaDasSamrat/todo-cli-go)

## 🔧 Development

### Quality Assurance

- All formulae are built from tagged source releases
- CMake-based build system where applicable
- Continuous integration testing on macOS via GitHub Actions
- Strict adherence to Homebrew conventions and style guidelines

### Adding New Formulae

For maintainers looking to add new formulae:

1. Create a new formula file in `Formula/<formula-name>.rb`
2. Use a tagged release from the official source repository
3. Ensure the formula includes:
   - Source-based build configuration
   - Semantic versioning
   - License declaration
   - Proper binary installation to Homebrew's `bin` directory
4. Test locally using `brew install --build-from-source ./Formula/<formula-name>.rb`
5. Validate with `brew audit --strict <formula-name>`
6. Run CI tests before merging

## 🤝 Contributing

Contributions are welcome and appreciated. To contribute:

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/your-feature`)
3. Make your changes and test thoroughly
4. Commit with clear, descriptive messages
5. Submit a pull request with a detailed description of your changes

Please ensure all contributions follow Homebrew's [formula guidelines](https://docs.brew.sh/Formula-Cookbook).

## 💬 Support

If you encounter issues with any formula:

1. Check the [Issues](https://github.com/GourangaDasSamrat/homebrew-tap/issues) page
2. Review the formula's source repository for known problems
3. Open a new issue with detailed reproduction steps

## 📄 License

Unless otherwise specified, all formulae in this repository are distributed under the [MIT License](LICENSE).

## 👨‍💻 Maintainer

**Gouranga Das Samrat**  
GitHub: [@GourangaDasSamrat](https://github.com/GourangaDasSamrat)

---

This tap is actively maintained and may expand to include additional CLI tools, developer utilities, and system-level applications.
