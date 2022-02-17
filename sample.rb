require "slack-notify"
require "clockwork"

module Clockwork
    every(3.minutes, "test") do
        client = SlackNotify::Client.new(
            webhook_url: ENV['URL'],
            channel: "#homeworks",
            username: "Rabbitbot",
            icon_url: "http://mydomain.com/myimage.png",
            icon_emoji: ":shipit:",
            link_names: 1
        )
        client.notify("Hello there!")
    end
end