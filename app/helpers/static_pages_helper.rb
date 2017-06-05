module StaticPagesHelper
  def decide_title(page_title = '')
    base_title = "PediChat"
    if page_title.empty?
      base_title
    else
      page_title
    end
  end
end
