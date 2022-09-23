class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes

  get '/messages' do
    messages = Message.created_at
    messages.to_json
  end

  post '/messages' do
    new_message = Message.create(
      body: params[:body],
      username: params[:username]
    )
    new_message.to_json
  end

  patch '/messages/:id' do
    edited_message = Message.find(params[:id])
    edited_message.update(
      body: params[:body]
    )
    edited_message.to_json
  end

  delete '/messages/:id' do
    deleted_message = Message.find(params[:id]).destroy
    deleted_message.to_json
  end
  
  
end
