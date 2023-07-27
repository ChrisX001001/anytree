
.PHONY: install-dev
install-dev:
	cd anytree-cli && cargo install --profile dev --path .

.PHONY: install
install:
	cd anytree-cli && cargo install --profile release --path .

.PHONY: fmt
fmt:
	taplo fmt
	cargo +nightly fmt --all -v

.PHONY: fix
fix:
	cargo clippy --fix --allow-dirty