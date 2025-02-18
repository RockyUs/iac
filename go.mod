module github.com/mdaxf/iac

go 1.21.1

require (
	github.com/IBM/sarama v1.43.0
	github.com/antonmedv/expr v1.15.3
	github.com/bits-and-blooms/bitset v1.8.0
	github.com/bits-and-blooms/bloom/v3 v3.5.0
	github.com/blang/semver v3.5.1+incompatible
	github.com/bradfitz/gomemcache v0.0.0-20230905024940-24af94b03874
	github.com/bytedance/sonic v1.10.0
	github.com/cenkalti/backoff/v4 v4.2.1
	github.com/chenzhuoyu/base64x v0.0.0-20230717121745-296ad89f973d
	github.com/chenzhuoyu/iasm v0.9.0
	github.com/davecgh/go-spew v1.1.1
	github.com/denisenkom/go-mssqldb v0.12.3
	github.com/desertbit/glue v0.0.0-20190619185959-06de07e1e404
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/dlclark/regexp2 v1.7.0
	github.com/dop251/goja v0.0.0-20231027120936-b396bb4c349d
	github.com/eapache/go-resiliency v1.6.0
	github.com/eapache/go-xerial-snappy v0.0.0-20230731223053-c322873962e3
	github.com/eapache/queue v1.1.0
	github.com/eclipse/paho.mqtt.golang v1.4.3
	github.com/gabriel-vasile/mimetype v1.4.2
	github.com/gin-contrib/sse v0.1.0
	github.com/gin-gonic/gin v1.9.1
	github.com/go-gomail/gomail v0.0.0-20160411212932-81ebce5c23df
	github.com/go-kit/log v0.2.1
	github.com/go-logfmt/logfmt v0.5.1
	github.com/go-playground/locales v0.14.1
	github.com/go-playground/universal-translator v0.18.1
	github.com/go-playground/validator/v10 v10.15.3
	github.com/go-redis/redis v6.15.9+incompatible
	github.com/go-sourcemap/sourcemap v2.1.3+incompatible
	github.com/go-sql-driver/mysql v1.7.1
	github.com/go-stomp/stomp v2.1.4+incompatible
	github.com/goccy/go-json v0.10.2
	github.com/golang-sql/civil v0.0.0-20190719163853-cb61b32ac6fe
	github.com/golang-sql/sqlexp v0.1.0
	github.com/golang/snappy v0.0.4
	github.com/gomodule/redigo v1.8.9
	github.com/google/pprof v0.0.0-20230207041349-798e818bf904
	github.com/google/uuid v1.4.0
	github.com/gopcua/opcua v0.5.1
	github.com/gorilla/websocket v1.5.0
	github.com/hashicorp/errwrap v1.0.0
	github.com/hashicorp/go-multierror v1.1.1
	github.com/hashicorp/go-uuid v1.0.3
	github.com/hashicorp/golang-lru v1.0.2
	github.com/jcmturner/aescts/v2 v2.0.0
	github.com/jcmturner/dnsutils/v2 v2.0.0
	github.com/jcmturner/gofork v1.7.6
	github.com/jcmturner/gokrb5/v8 v8.4.4
	github.com/jcmturner/rpc/v2 v2.0.3
	github.com/json-iterator/go v1.1.12
	github.com/klauspost/compress v1.17.7
	github.com/klauspost/cpuid/v2 v2.2.5
	github.com/leodido/go-urn v1.2.4
	github.com/mattn/go-isatty v0.0.19
	github.com/mdaxf/iac-signalr v0.0.0-20240414021819-7bf0f7ea3eac
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd
	github.com/modern-go/reflect2 v1.0.2
	github.com/montanaflynn/stats v0.0.0-20171201202039-1bf9dbcd8cbe
	github.com/pelletier/go-toml/v2 v2.1.0
	github.com/pierrec/lz4/v4 v4.1.21
	github.com/pkg/errors v0.9.1
	github.com/pmezard/go-difflib v1.0.0
	github.com/rcrowley/go-metrics v0.0.0-20201227073835-cf1acfcdf475
	github.com/robertkrimen/otto v0.2.1
	github.com/shiena/ansicolor v0.0.0-20230509054315-a9deabde6e02
	github.com/sirupsen/logrus v1.9.3
	github.com/ssdb/gossdb v0.0.0-20180723034631-88f6b59b84ec
	github.com/stretchr/objx v0.5.0
	github.com/stretchr/testify v1.8.4
	github.com/teivah/onecontext v1.3.0
	github.com/twitchyliquid64/golang-asm v0.15.1
	github.com/ugorji/go/codec v1.2.11
	github.com/vmihailenco/msgpack/v5 v5.4.0
	github.com/vmihailenco/tagparser/v2 v2.0.0
	github.com/xdg-go/pbkdf2 v1.0.0
	github.com/xdg-go/scram v1.1.2
	github.com/xdg-go/stringprep v1.0.4
	github.com/youmark/pkcs8 v0.0.0-20181117223130-1be2e3e5546d
	go.mongodb.org/mongo-driver v1.12.1
	go.opentelemetry.io/otel v1.20.0
	go.opentelemetry.io/otel/trace v1.20.0
	golang.org/x/arch v0.5.0
	golang.org/x/crypto v0.19.0
	golang.org/x/exp v0.0.0-20230522175609-2e198f4a06a1
	golang.org/x/net v0.21.0
	golang.org/x/sync v0.6.0
	golang.org/x/sys v0.17.0
	golang.org/x/text v0.14.0
	google.golang.org/protobuf v1.31.0
	gopkg.in/alexcesaro/quotedprintable.v3 v3.0.0-20150716171945-2caba252f4dc
	gopkg.in/sourcemap.v1 v1.0.5
	gopkg.in/yaml.v3 v3.0.1
	nhooyr.io/websocket v1.8.7
)

require (
	github.com/chromedp/cdproto v0.0.0-20240202021202-6d0b6a386732 // indirect
	github.com/chromedp/chromedp v0.9.5 // indirect
	github.com/chromedp/sysutil v1.0.0 // indirect
	github.com/gobwas/httphead v0.1.0 // indirect
	github.com/gobwas/pool v0.2.1 // indirect
	github.com/gobwas/ws v1.3.2 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/phpdave11/gofpdi v1.0.14-0.20211212211723-1f10f9844311 // indirect
	github.com/rogpeppe/go-internal v1.8.1 // indirect
	github.com/signintech/gopdf v0.25.1 // indirect
	gopkg.in/gomail.v2 v2.0.0-20160411212932-81ebce5c23df // indirect
)
