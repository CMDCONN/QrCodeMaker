# Python QR Code Generator

A basic Python script that generates QR codes from text or URLs.

## Features
- Generate QR codes from any input (text, links, etc.)
- Simple and lightweight
- Cross-platform (Windows, macOS, Linux)

---

## Requirements
- Python 3.x
- pip (Python package manager)

---

## Installation

You can install dependencies manually:

```bash
python -m pip install qrcode[pil]
```

Or let the provided scripts handle it automatically (see below).

---

## Usage

Run the script directly:

```bash
python qr.py
```

or on macOS/Linux:

```bash
python3 qr.py
```

Follow the prompts (if your script includes input), or modify `qr.py` to customize the content/output.

---

## Quick Start Scripts

### Windows (`run.bat`)

```bat
@echo off

echo Installing dependencies...
python -m pip install qrcode[pil]

echo Running QR generator...
python qr.py

pause
```

**How to use:**
1. Double-click `run.bat`  
   **or**
2. Run in Command Prompt:
   ```cmd
   run.bat
   ```

---

### macOS / Linux (`run.sh`)

```bash
#!/bin/bash

echo "Installing dependencies..."
python3 -m pip install qrcode[pil]

echo "Running QR generator..."
python3 qr.py

read -p "Press Enter to continue..."
```

**How to use:**
1. Make it executable:
   ```bash
   chmod +x run.sh
   ```
2. Run it:
   ```bash
   ./run.sh
   ```

---

## Project Structure

```
.
├── qr.py          # Main Python script
├── run.bat        # Windows script
├── run.sh         # macOS/Linux script
└── README.md      # This file
```

---

## Example (inside `qr.py`)

```python
import qrcode

data = input("Enter text or URL: ")
img = qrcode.make(data)

img.save("qrcode.png")
print("QR code saved as qrcode.png")
```

---

## Notes
- On macOS/Linux, always prefer `python3` over `python`.
- If you run into permission issues on macOS/Linux, use:
  ```bash
  chmod +x run.sh
  ```
- For more control (size, colors, etc.), explore the `qrcode` library options.