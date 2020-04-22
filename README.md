# Agent-Go

ioFog Agent implemented with Golang

## Build from Source

This project uses go modules so it must be built from outside of your $GOPATH.

Go 1.12.1+ is a prerequisite. Install all other dependancies with:
```
script/bootstrap.sh
```

See all `make` commands by running:
```
make help
```

If you are starting to work on the project, run init to set up git hooks and such:
```
make init
```

To build, go ahead and run:
```
make build
```

## Running Tests

Run project unit tests:
```
make test
```

This will output a JUnit compatible file into `reports/TEST-agent.xml` that can be imported in most CI systems.