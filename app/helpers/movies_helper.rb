module MoviesHelper
  def sortable_link(column, title)
    direction = (column == session[:sort] && session[:direction] == "asc") ? "desc" : "asc"
    icon = column == session[:sort] ? (session[:direction] == "asc" ? "▲" : "▼") : ""
    # Use a <div> inside the link to ensure clickable area covers the whole cell
    link_to movies_path(sort: column, direction: direction), class: "sortable-link" do
      content_tag(:div, "#{title} #{icon}".html_safe)
    end
  end
end
