class RatesController < ApplicationController
    def get_current_exchange
		return Rails.cache.fetch('get_current_exchange', :expires_in => 10.hours) {
			require 'money/bank/openexchangerates_bank'
			moxb = Money::Bank::OpenexchangeratesBank.new
			moxb.access_key = ENV['KEY_OPENEXCHARGERATES']
			[moxb.update_rates, moxb.rates_timestamp]
		}
	end
    def index
		@current_exchange = get_current_exchange[0]
		@timestamp = get_current_exchange[1]
		@page_title = 'Current Exchange Rates on Rails'
	end
end
