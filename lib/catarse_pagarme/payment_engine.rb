module CatarsePagarme
  class PaymentEngine
    def name
      'Pagarme'
    end

    def review_path contribution
      url_helpers.review_pagarme_path(contribution)
    end

    def locale
      'pt'
    end

    def can_do_refund?
      true
    end

    def direct_refund contribution
    end

    protected

    def url_helpers
      CatarsePagarme::Engine.routes.url_helpers
    end
  end
end