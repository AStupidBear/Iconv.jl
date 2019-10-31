module Iconv

export iconv, togbk, toutf8, @g_str

function iconv(str, f, t)
    prcs = open(`iconv -f $f -t $t`, "r+")
    write(prcs.in, str)
    close(prcs.in)
    strgbk = read(prcs.out)
    return strgbk
end

iconv(v::Array{UInt8}, f, t) = iconv(String(v), f, t)

togbk(str) = iconv(str, "UTF-8", "GBK")
toutf8(str) = iconv(str, "GBK", "UTF-8")

macro g_str(str)
    str_gbk = togbk(str)
    :($str_gbk)
end

end # module
