# music
Music for public use.

## Build PDFs (A4 and Letter)

This project includes a PowerShell build script that renders both A4 and Letter output from the same LilyPond source.

### Requirements

- LilyPond installed and available in `PATH`
- PowerShell (Windows PowerShell 5.1 or newer)

### Build command

Run from the repository root:

```powershell
.\build.ps1
```

This generates files under:

- `build/a4/`
- `build/letter/`

You can also choose a different input file or output folder:

```powershell
.\build.ps1 -InputFile "tiro.ly" -OutDir "dist"
```
