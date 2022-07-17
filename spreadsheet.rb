require 'bundler'

Bundler.require
session = GoogleDrive::Session.from_service_account_key("client_secret.json")

spreadsheet = session.spreadsheet_by_title("Congress Data")

worksheet = spreadsheet.worksheets.first
worksheet.rows.first(10).each { |row| puts row.first(6).reverse.join("|")}

