# Load the Rails application.
require File.expand_path('../application', __FILE__)
require 'amazon/ecs'
require 'rakuten'

Amazon::Ecs.options = {
  :associate_tag =>     'hiroshixps-22',
  :AWS_access_key_id => 'AKIAIAIEVZQJFCXA7CPA',
  :AWS_secret_key =>    '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',
  :country => 'jp',
}

# Initialize the Rails application.
Oldmatome::Application.initialize!

WillPaginate::ViewHelpers.pagination_options[:previous_label] = '&lt 前へ'
WillPaginate::ViewHelpers.pagination_options[:next_label] = '次へ &gt'
