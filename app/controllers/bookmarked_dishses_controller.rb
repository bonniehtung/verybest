class BookmarkedDishsesController < ApplicationController
  def index
    @q = BookmarkedDishse.ransack(params[:q])
    @bookmarked_dishses = @q.result(:distinct => true).includes(:venues, :users, :dish).page(params[:page]).per(10)

    render("bookmarked_dishses/index.html.erb")
  end

  def show
    @bookmarked_dishse = BookmarkedDishse.find(params[:id])

    render("bookmarked_dishses/show.html.erb")
  end

  def new
    @bookmarked_dishse = BookmarkedDishse.new

    render("bookmarked_dishses/new.html.erb")
  end

  def create
    @bookmarked_dishse = BookmarkedDishse.new

    @bookmarked_dishse.venues_id = params[:venues_id]
    @bookmarked_dishse.users_id = params[:users_id]

    save_status = @bookmarked_dishse.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bookmarked_dishses/new", "/create_bookmarked_dishse"
        redirect_to("/bookmarked_dishses")
      else
        redirect_back(:fallback_location => "/", :notice => "Bookmarked dishse created successfully.")
      end
    else
      render("bookmarked_dishses/new.html.erb")
    end
  end

  def edit
    @bookmarked_dishse = BookmarkedDishse.find(params[:id])

    render("bookmarked_dishses/edit.html.erb")
  end

  def update
    @bookmarked_dishse = BookmarkedDishse.find(params[:id])

    @bookmarked_dishse.venues_id = params[:venues_id]
    @bookmarked_dishse.users_id = params[:users_id]

    save_status = @bookmarked_dishse.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bookmarked_dishses/#{@bookmarked_dishse.id}/edit", "/update_bookmarked_dishse"
        redirect_to("/bookmarked_dishses/#{@bookmarked_dishse.id}", :notice => "Bookmarked dishse updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Bookmarked dishse updated successfully.")
      end
    else
      render("bookmarked_dishses/edit.html.erb")
    end
  end

  def destroy
    @bookmarked_dishse = BookmarkedDishse.find(params[:id])

    @bookmarked_dishse.destroy

    if URI(request.referer).path == "/bookmarked_dishses/#{@bookmarked_dishse.id}"
      redirect_to("/", :notice => "Bookmarked dishse deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Bookmarked dishse deleted.")
    end
  end
end
