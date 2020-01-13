class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    
    before_action :redirect_subdomain, :check_user, :get_title

    def get_title
        @title = Proc.new do
            if @review
                "#{@review.title} É Bom? - Tablet Z"
            elsif @post
                "#{@post.title} - Tablet Z"
            elsif @page_title
                "#{@page_title} - Tablet Z"
            else
                "Tablet Z"
            end
        end
    end

    def check_user
        @admin = current_admin_user
    end

    def redirect_subdomain
        if request.host == 'www.tabletz.com.br'
            redirect_to 'https://tabletz.com.br' + request.fullpath, :status => 301
        end
    end
end
