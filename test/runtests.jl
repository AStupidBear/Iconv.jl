using GBK
using Test

@test iconv("笨熊", "UTF-8", "GBK") == togbk("笨熊") == g"笨熊"
@test iconv(g"笨熊", "GBK", "UTF-8") == toutf8(g"笨熊") == b"笨熊"