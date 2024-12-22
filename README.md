# cliq
The Jule CLI Library

## Installation
To install the library, follow the steps below:

- Download the library package from the [releases page](https://github.com/adamperkowski/cliq/releases)
- Extract the package
- Include the extracted directory in your project's source (don't forget to run `julec mod init`)

## Usage
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
