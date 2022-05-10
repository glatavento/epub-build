mkdir -p ../_out
cd src/
mv book.toml book.toml.bak
cp ../book.toml .

mdbook build
mv book.toml.bak book.toml
mv ./book/*.epub ../../_out/
