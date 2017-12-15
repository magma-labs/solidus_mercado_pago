# require 'solidus_core'

module SolidusMercadoPago
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'solidus_paybright'

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end

      Dir.glob(File.join(File.dirname(__FILE__), '../../app/overrides/*.rb')) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end

    initializer 'spree_payment_network.register.payment_methods' do |app|
      app.config.spree.payment_methods << Spree::PaymentMethod::MercadoPago
    end

    config.to_prepare &method(:activate).to_proc
  end
end