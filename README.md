# String encoding conversions in Julia using iconv

## Installation

Make sure `iconv` is installed on your system, then

```julia
julia>]
pkg> add https://github.com/AStupidBear/PyCallUtils.jl.git
```

On Windows, you can install `iconv` using [Scoop](https://scoop.sh/) 

```
scoop install iconv
```

## Usage

```julia
iconv("笨熊", "UTF-8", "GBK") == togbk("笨熊") == g"笨熊"
iconv(g"笨熊", "GBK", "UTF-8") == toutf8(g"笨熊") == b"笨熊"
```