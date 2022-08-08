source .venv/bin/activate
date 
pip install nuitka # Make sure nuitka is installed
pip install ordered-set # Make sure it's installed as otherwise compilatin is slow
time python3.10 -m nuitka \
    --lto=yes \
    --standalone \
    --include-data-file=".venv/lib/python3.10/site-packages/jsonrpcserver/request-schema.json=jsonrpcserver/request-schema.json" \
    nuitka_solana_test/main.py \
