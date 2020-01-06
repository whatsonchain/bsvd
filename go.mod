module github.com/whatsonchain/bsvd

go 1.13

require (
	github.com/bitcoinsv/bsvd v0.0.0-20190609155523-4c29707f7173
	github.com/bitcoinsv/bsvutil v0.0.0-20181216182056-1d77cf353ea9
	github.com/btcsuite/go-socks v0.0.0-20170105172521-4720035b7bfd
	github.com/btcsuite/goleveldb v1.0.0
	github.com/btcsuite/websocket v0.0.0-20150119174127-31079b680792
	github.com/btcsuite/winsvc v1.0.0
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc
	github.com/gcash/bchd v0.15.2 // indirect
	github.com/jessevdk/go-flags v1.4.1-0.20181029123624-5de817a9aa20
	github.com/jrick/logrotate v1.0.0
	github.com/whatsonchain/bsvlog v0.0.0-20180913005452-b4f036f92fa6
	github.com/whatsonchain/bsvutil v0.0.0-20181203010857-1a66872105f0
	golang.org/x/crypto v0.0.0-20191227163750-53104e6ec876
)

replace (
	github.com/whatsonchain/bsvlog => ../bsvlog
	github.com/whatsonchain/bsvutil => ../bsvutil
)
