require 'roo'
require 'csv'

# CSVとして書き出し
# @param [String] path 書き出し先ファイルパス
# @param [Roo::Excelx] sheet シート
def write_csv_streaming(path:, sheet:)
  CSV.open(path, 'wb') do |csv|
    sheet.each_row_streaming do |row|
      csv << row.map { |cell| cell&.value }
    end
  end
end

def run
  xlsx = Roo::Spreadsheet.open('./MasterData.xlsx')
  sheet_names = xlsx.sheets
  sheet_names.each do |sheet_name|
    sheet = xlsx.sheet(sheet_name)

    sheet.to_csv("output1/#{sheet_name}.csv")
    write_csv_streaming(path: "output2/#{sheet_name}.csv", sheet: sheet)
  end
  puts 'generate completed'
end

run