FROM rust
WORKDIR /workdir
COPY . .
RUN cargo build
RUN cargo build --example extract
RUN rustup toolchain install nightly
RUN rustup override set nightly
RUN cargo install cargo-fuzz