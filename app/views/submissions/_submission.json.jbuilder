json.extract! submission, :id, :title, :post, :created_at, :updated_at
json.url submission_url(submission, format: :json)
