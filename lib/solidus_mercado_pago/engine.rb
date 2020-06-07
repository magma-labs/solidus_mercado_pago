# frozen_string_literal: true

require 'spree/core'

module SolidusMercadoPago
  class Engine < Rails::Engine
    include SolidusSupport::EngineExtensions

    isolate_namespace ::Spree
    engine_name 'solidus_mercado_pago'

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer 'spree_payment_network.register.payment_methods' do |app|
      app.config.spree.payment_methods << Spree::PaymentMethod::MercadoPago
    end
  end
end
