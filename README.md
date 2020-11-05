# ethnodes

0. ruby installed

1. install

```
> git clone https://github.com/wuminzhe/ethnodes.git
> cd ethnodes
> bundle
```

2. set node urls in config.yml

3. run

```
> ruby main.rb -s Puma -p 3000
```

4. call api
```
curl http://127.0.0.1:3000 \
    -X POST \
    -H "Content-Type: application/json" \
    -d '{"jsonrpc":"2.0","method":"eth_blockNumber","params": [],"id":1}'
```
