class PagesController < ApplicationController

  def home
    @page_title = "Esse Laptop/Notebook, PC, Smartphone, Tablet É Bom?"
    @posts = Post.all.order('updated_at desc')
  end

  def sobre
    @page_title = "Sobre"
  end

  def contato
    @page_title = "Contato"
  end

  def termos_de_uso
    @page_title = "Termos de Uso"
  end

  def politica_de_privacidade
    @page_title = "Política de Privacidade"
  end
end
