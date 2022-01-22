
https://github.com/roo-rb/roo

を使ってスプレッドシートからダウンロードしたxlsxをいじるサンプル。

サンプルでは2つの方法で元のxlsxからcsvを生成している。

元データ  
MasterData.xlsx

output1: rooのto_csvを使って出力  
https://github.com/roo-rb/roo/blob/v2.8.3/lib/roo/formatters/csv.rb#L4

output2: each_row_streamingを使って一行ずつ処理してcsvを出力  
https://www.rubydoc.info/gems/roo/2.8.3/Roo%2FExcelx:each_row_streaming

output1では数字が整数だが、output2では小数点がついている。


