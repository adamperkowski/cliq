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

fn main() {
	mut cliq := cliq::Builder{
		Args: {
			// flag: default value (type)
			"ping": false,
			"message": "",
		},
	}.Help().Build()

	cliq.GetCLI()
	cliq.Parse()

	ping := cliq.Get("ping")       // bool due to the default value
	message := cliq.Get("message") // str due to the default value

	if ping == true {
		print("pong! ")
		println(message)
	}
}
```

See the [examples](/examples) directory for more examples.

## License
The extension is distributed under the terms of the BSD 3-Clause license.<br>
[See License Details](/LICENSE)
