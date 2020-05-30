require './news'

news = News.new('〇〇入荷！', '新鮮なお魚を入荷しました')
slack_notifier = lambda do |saved_news|
  puts "slackに通知 => title: #{saved_news.title}, description: #{saved_news.description}"
end
chatwork_notifier = lambda do |saved_news|
  puts "chatworkに通知 => title: #{saved_news.title}, description: #{saved_news.description}"
end
news.add_observer(&slack_notifier)
news.add_observer(&chatwork_notifier)
news.save

news.delete_observer(chatwork_notifier)
news.save
