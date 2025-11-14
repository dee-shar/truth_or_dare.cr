require "json"
require "http/client"

class TruthOrDare
  API_PATH = "api"
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://api.truthordarebot.xyz")
    @http_client = HTTP::Client.new(uri)
  end

  def get_truth() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/truth", headers: @headers).body)
  end

  def get_dare() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/dare", headers: @headers).body)
  end

  def get_would_you_rather() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/wyr", headers: @headers).body)
  end

  def get_never_have_i_ever() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/nhie", headers: @headers).body)
  end

  def get_paranoia_question() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/paranoia", headers: @headers).body)
  end
end
