module AllPages

    class App


      # you need a single method for each of the pages

      def home_page
        @home_page ||= HomePage.new
      end

      def plp
        @plp||= ProductListPage.new
      end

      def shop_byDepartment
        @shop_byDepartment||=ShopByDepartment.new
      end

    end


  def amazon
    @amazon ||= App.new
  end
end





              # INITIALIZING THE CLASS (can be done within the env file)

# USING ARRAYS
#page_classes = {:home_page => HomePage,
#:login_page => LoginPage,
#                 :register_page => RegisterPage,
#                 :landing_page => LandingPage,
#                 :forgotten_password_page => ForgottenPasswordPage,
#                 :verification_code_page => VerificationCodePage,
#                 :password_reset_page => PasswordResetPage,
#                 :cms_base_page      => CMSBasePage,
#                 :cms_dashboard_page => CMSDashboardPage,
#                 :cms_login_page => CMSLoginPage,
#                 :site_content_landing => SiteContentLanding,
#                 :profile_page => ProfilePage,
#                 :risk_factors_page => RiskFactorsPage,
#                 :medical_history_page => MedicalHistoryPage,
#                 :emotional_wellbeing_page => EmotionalWellbeingPage,
#                 :clinical_measures_page => ClinicalMeasuresPage
#  }
#
# page_classes.each_key do |method|
#   define_method method do
#     page_classes[method].send("new".to_sym)
#   end
#   end