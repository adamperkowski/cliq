<div align='center'>

# <img width='512' src='/cliq.webp'><br>The Jule CLI Library

A Jule library for creating command-line interfaces.

[Usage](#usage) |
[Examples](/examples) |
[Donate](https://github.com/sponsors/adamperkowski)

</div>

## Usage
To install the library, follow the steps below:

1. Download the library package from the [releases page](https://github.com/adamperkowski/cliq/releases)
2. Extract the package
3. Include the extracted directory in your project's source (don't forget to run `julec mod init`)

Example usage of the library:

```jule
use "cliq"

static ArgMap: map[int][2]str = {
	// the indexes start from 1 because 0 is reserved for `help`
	1: ["version", "Display version information"],
}

fn main() {
	mut cliq := cliq::Init()
	cliq.Parse(/* allow_multiple: */ false)

	if cliq.Res["version"] {
		println("version goes here...")
	}
}
```

See the [examples](/examples) directory for more examples.

## License
The extension is distributed under the terms of the BSD 3-Clause license.<br>
[See License Details](/LICENSE)
