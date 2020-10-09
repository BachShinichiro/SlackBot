require "slack-notify"
require 'clockwork'
require 'active_support/time'

 #APIは保守の観点から記載しておりません
sample = SlackNotify::Client.new(webhook_url:'API')
sample.notify("Hello test!")

module Clockwork
    handler do |job|
        #APIは保守の観点から記載しておりません
        sample = SlackNotify::Client.new(webhook_url:'API')
        sample.notify("バッハbot参上")
    end
    every(3.minutes, 'less.frequent.job')
end