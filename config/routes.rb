Rails.application.routes.draw do
  post "push_message" => "push_message#push_message"
end
