# Nevergreen Docker image

This is the official Nevergreen Docker image.

## What is Nevergreen?

For more info visit https://github.com/build-canaries/nevergreen

## How to use this image

### Running

    docker run -d -p [host-port]:5000 buildcanariesteam/nevergreen 

This starts up Nevergreen on http://localhost:[host-port\]

### Running a specific version

    docker run -d -p [host-port]:5000 buildcanariesteam/nevergreen:v0.10.0

### Variables

- **AES_KEY**: Used to encrypt passwords can be set using `-e "AES_KEY=your-key"`

## License

Copyright © 2017 Build Canaries

Distributed under the Eclipse Public License either version 1.0 or (at your option) any later version.
