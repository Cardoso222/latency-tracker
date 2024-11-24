# LatencyTracker

LatencyTracker is a lightweight macOS menu bar application that continuously monitors and displays your network latency to Google's servers. It provides a simple way to keep track of your connection's responsiveness in real-time.

![LatencyTracker](assets/latency-tracker.gif)

## Features

- 🚀 Real-time latency monitoring in milliseconds
- 🔄 Updates every second
- ⚡️ Minimal and unobtrusive menu bar interface
- 🔌 Launch at login option
- 🎯 Simple settings interface

## Requirements

- macOS 11.0 or later
- Xcode 13.0 or later (for building from source)

## Installation

1. Download the latest release from the [Releases](https://github.com/cardoso222/LatencyTracker/releases) page
2. Move LatencyTracker.app to your Applications folder
3. Launch the application

## Building from Source

1. Clone the repository:

```bash
git clone https://github.com/cardoso222/LatencyTracker.git
```

2. Open `LatencyTracker.xcodeproj` in Xcode
3. Build and run the project (⌘R)

## Usage

Once launched, LatencyTracker will appear in your menu bar showing your current latency to Google's servers. Click the menu bar icon to access settings:

- Toggle "Launch at Login" to control startup behavior
- Click "Quit" to exit the application

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [LaunchAtLogin](https://github.com/sindresorhus/LaunchAtLogin) - Used for handling launch at login functionality