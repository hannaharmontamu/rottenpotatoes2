module MoviesHelper
  def sortable_link(column, title)
    direction = (column == params[:sort] && params[:direction] == "asc") ? "desc" : "asc"
    icon = column == params[:sort] ? (params[:direction] == "asc" ? "▲" : "▼") : ""
    link_to "#{title} #{icon}".html_safe, { sort: column, direction: direction }, class: "sortable-link"
  end
end
