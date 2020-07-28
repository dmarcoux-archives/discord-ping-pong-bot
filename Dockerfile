# Compile a completely static Rust binary
FROM ekidd/rust-musl-builder:1.44.0 AS build
ADD --chown=rust:rust . .
RUN cargo build --release

# Copy the binary into an empty image
FROM scratch
COPY --from=build /home/rust/src/target/x86_64-unknown-linux-musl/release/discord-ping-pong-bot /
CMD ["/discord-ping-pong-bot"]
