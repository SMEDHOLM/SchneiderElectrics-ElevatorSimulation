# Schneider Electric Elevator Simulation

A comprehensive elevator control system simulation built using Schneider Electric EcoStruxure Machine Expert, implementing IEC 61499 function blocks for industrial automation control logic and a modern C# Human-Machine Interface (HMI).

## 📋 Overview

This project demonstrates a complete elevator simulation system featuring:
- **3-floor elevator operation** with position sensors and call buttons
- **Door control system** with open/close functionality and safety sensors
- **Real-time HMI visualization** showing elevator status, floor indicators, and control panels
- **IEC 61499 compliant control logic** using function blocks for modular design
- **Industrial-grade architecture** with hardware configuration and asset management

## 🏗️ Architecture

### Components

- **IEC61499 Control Logic**: Core control algorithms implemented as function blocks
  - CabinControl: Elevator motor and movement logic
  - DoorControl: Door opening/closing sequences
  - FloorSensors: Position detection and floor management
  - CallButton: User interface button handling

- **HMI (Human-Machine Interface)**: C# .NET application providing:
  - Real-time elevator visualization
  - Floor indicators and call buttons
  - Door status monitoring
  - Alarm and status displays

- **Hardware Configuration**: Schneider Electric device setup and I/O mapping

- **Asset Link Data**: Data management for equipment assets

- **Topology Manager**: System network topology configuration

- **Aveva OMI**: Operations Management Interface integration

## 🚀 Features

### Elevator Control
- Multi-floor navigation (Ground, Floor 1, Floor 2)
- Priority call handling (up/down requests)
- Door safety interlocks
- Emergency stop functionality

### HMI Interface
- Interactive floor selection
- Real-time position display
- Door status indicators
- Call button illumination
- Alarm notifications

### Industrial Standards
- IEC 61499 function block architecture
- Schneider Electric EcoStruxure compatibility
- OPC UA communication protocols

## 🛠️ Prerequisites

- **Schneider Electric EcoStruxure Machine Expert** (v23.0 or later)
- **Microsoft Visual Studio** 2019/2022 with .NET Framework 4.8
- **Windows 10/11** operating system

## 📦 Installation

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd SchneiderElectrics-ElevatorSimulation
   ```

2. **Extract project files**:
   ```powershell
   Expand-Archive -Path ElevatorSimulation.zip -DestinationPath .
   ```

3. **Open in EcoStruxure Machine Expert**:
   - Launch EcoStruxure Machine Expert
   - Open `Assignment2_student.sln`

4. **Build the solution**:
   - Select Debug/Release configuration
   - Build all projects (IEC61499, HMI, HwConfiguration, etc.)

## 🎯 Usage

### Running the Simulation

1. **Start the IEC 61499 Runtime**:
   - Deploy the IEC61499 project to runtime
   - Start the control application

2. **Launch the HMI**:
   - Run the HMI project from Visual Studio
   - The interface will connect to the control system

3. **Operate the Elevator**:
   - Use call buttons in the HMI to request floors
   - Observe real-time elevator movement and door operations
   - Monitor system status and alarms

### Development

- **Modify Control Logic**: Edit function blocks in IEC61499 project
- **Customize HMI**: Update C# forms and controls in HMI project
- **Configure Hardware**: Adjust I/O mappings in HwConfiguration project

## 📁 Project Structure

```
SchneiderElectrics-ElevatorSimulation/
├── IEC61499/                 # IEC 61499 Function Block Project
│   ├── ControlSBA.app       # Main control application
│   ├── CabinControl.fbt     # Elevator motor control
│   ├── DoorControl.fbt      # Door operation logic
│   ├── FloorSensors.fbt     # Position sensors
│   └── CallButton/          # Button handling components
├── HMI/                     # Human-Machine Interface (C#)
│   ├── HMI.csproj          # C# project file
│   ├── Canvas.cnv.cs       # Main interface canvas
│   ├── Lift/               # Elevator visualization
│   ├── Door/               # Door controls
│   └── FloorIndicator/     # Floor displays
├── HwConfiguration/         # Hardware setup
├── AssetLinkData/          # Asset management
├── Topology/               # Network topology
├── AvevaOMI/               # Operations interface
├── ElevatorSimulation.pdf  # Project documentation
└── Assignment2_student.sln # Visual Studio solution
```

## 🔧 Configuration

### IEC 61499 Settings
- **Device**: Configure target runtime device
- **Resources**: Set up execution resources
- **Applications**: Deploy control applications

### HMI Configuration
- **Connection**: Configure OPC UA endpoint for control system
- **Themes**: Customize visual appearance
- **Alarms**: Set up notification thresholds

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

For questions or support:
- Check the [ElevatorSimulation.pdf](ElevatorSimulation.pdf) documentation
- Review Schneider Electric EcoStruxure documentation
- Contact project maintainers

## 🙏 Acknowledgments

- Schneider Electric EcoStruxure Machine Expert platform
- IEC 61499 standard for distributed control systems
- nxtControl GmbH for IEC 61499 tools</content>
