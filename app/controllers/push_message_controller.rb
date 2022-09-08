class PushMessageController < ApplicationController
  def push_message
    client = Slack::Web::Client.new
    client.chat_postMessage(channel: '#test', text: params.dig(:webhook_event, :body), as_user: true)
  end
end

