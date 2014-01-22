class MarketsDatatable
  delegate :params, :h, :link_to, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Markets.count,
      iTotalDisplayRecords: markets.total_entries,
      aaData: data
    }
  end

private

  def data
    markets.map do |market|
      [
        link_to(markets.name, market),
        h(market.rank),
        h(market.description)
      ]
    end
  end

  def markets
    @products ||= fetch_markets
  end

  def fetch_markets
    markets = Markets.order("#{sort_column} #{sort_direction}")
    markets = markets.page(page).per_page(per_page)
    if params[:sSearch].present?
      markets = markets.where("name like :search or description like :search", search: "%#{params[:sSearch]}%")
    end
    markets
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[rank name description]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end