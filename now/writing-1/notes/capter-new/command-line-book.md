This returns a Result, and the code calls Result::unwrap because the binary should be found.
Use Assert::success to ensure the command succeeded
Use the Assert::failure function to ensure the command failed. Ex:
`
      let mut cmd = Command::cargo_bin("false").unwrap();
    cmd.assert().failure();
`
Verify that the command exits successfully and prints the expected text to
STDOUT:
`cmd.assert().success().stdout("Hello, world!\n");`

Use the std::process::exit function to exit the program with the value zero.
by default a Rust program will exit with the value zero and that the std::process::exit function can be used to explicitly exit with a given code. Additionally, the std::process::abort function can be used to exit with a nonzero error code.
cargo run --quiet --bin true
The --bin option is the name of the binary target to run.
