json.extract! book, :id,
                    :short_name,
                    :full_name,
                    :year,
                    :created_at,
                    :updated_at
json.authors do
  json.array!(book.authors) do |author|
    json.first_name author.first_name
    json..last_name author.last_name
end
json.url book_url(book, format: :json)
