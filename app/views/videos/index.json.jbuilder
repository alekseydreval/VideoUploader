json.array!(@videos) do |video|
  json.extract! video, :id, :content
  json.url video_url(video, format: :json)
end
