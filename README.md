
# Group Songs by Album

The `Group-Songs-By-Album` project offers a script for organizing music files into directories based on their album information. This tool is ideal for managing and sorting large collections of music files to keep them neatly arranged by album.

## Overview

The `ArrangeMusic.sh` script scans through music files, extracts album information from their metadata, and moves the files into corresponding album directories. This helps in organizing music collections in a structured manner.

## Features

- **Album-Based Organization**: Moves music files into directories based on their album metadata.
- **Batch Processing**: Handles multiple music files in a directory.
- **Flexible Metadata Handling**: Works with files having embedded album information.

## Requirements

- **FFmpeg**: For handling multimedia files and extracting metadata.
  - **Ubuntu/Debian**: Install with `sudo apt-get install ffmpeg`
  - **MacOS**: Install with `brew install ffmpeg`
  - **Windows**: Download from [FFmpeg official website](https://ffmpeg.org/download.html)

## Usage

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/therishitakerr/Group-Songs-By-Album.git
   cd Group-Songs-By-Album
   ```

2. **Prepare Your Files**:
   Place your music files in the `music/` directory. The script will organize these files based on their album metadata.

3. **Run the Script**:
   Make the script executable and run it to organize your music files:
   ```bash
   chmod +x ArrangeMusic.sh
   ./ArrangeMusic.sh
   ```

   **Script Usage**:
   The script will process all music files in the `music/` directory and organize them into album-based directories.

4. **Check the Output**:
   The script will create directories for each album and move the corresponding music files into these directories.

## Example

1. **Initial Directory Structure**:
   ```
   /path/to/group-songs-by-album/
   ├── music/
   │   ├── song1.mp3
   │   ├── song2.mp3
   │   └── song3.mp3
   ```

2. **After Running the Script**:
   The directory structure will be organized by album:
   ```
   /path/to/group-songs-by-album/
   ├── music/
   │   ├── Album1/
   │   │   ├── song1.mp3
   │   └── Album2/
   │       └── song2.mp3
   ```

## Configuration

You can modify the `ArrangeMusic.sh` script to adjust the input and output directories or to customize the metadata extraction process according to your needs.

## Notes

- Ensure that your music files contain album metadata before running the script.
- The script assumes that music files are in a `music/` directory and organizes them into album-based subdirectories.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for suggestions, improvements, or bug fixes.
