# RedesignedClock

A modern and visually appealing clock app built using SwiftUI. This project features a unique circular design to represent the hours, minutes, and optionally seconds. The clock updates in real-time and provides a minimalist interface for a contemporary clock experience.

## Features

- **Real-Time Clock:** Updates every 0.1 seconds to keep the displayed time accurate.
- **Circular Design:** Uses concentric circles to visually represent hours, minutes, and optionally seconds.
- **Minimalist Interface:** Simple and elegant design with a black background and white text.
- **Toggle Seconds Display:** Option to show or hide the seconds circle.

## Screenshots

*Include screenshots of the app here.*

## Requirements

- iOS 14.0+
- Xcode 12.0+
- Swift 5.0+

## Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/giacolees/RedesignedClock.git
    ```

2. Open the project in Xcode:

    ```sh
    cd RedesignedClock
    open RedesignedClock.xcodeproj
    ```

3. Build and run the project on your simulator or device.

## Usage

Once the app is running, you will see a clock with the current time displayed in a circular format. The hours, minutes, and seconds (if enabled) are represented as concentric circles.

### Toggling Seconds Display

You can toggle the display of the seconds circle by pressing the button at the bottom of the screen. The button will show or hide the seconds circle based on its current state.

## Code Explanation

The main view of the app is the `ContentView` struct, which handles the display and updating of the clock. Key components include:

- **Date State Variable:** Stores the current date and time.
- **Computed Properties:** Calculate the progress for hours, minutes, and seconds as fractions.
- **Timer:** Publishes updates every 0.1 seconds to keep the time accurate.
- **Rotation Angles:** Calculate the angles for rotating the circles representing hours, minutes, and seconds.
- **Button:** Toggles the display of the seconds circle.

### Functions

- **toInt(cas:date:)**: Converts date components (hours, minutes, seconds) to integers for easier manipulation.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Inspired by various modern clock designs.
- Built with SwiftUI.
