get '/' do
  @categories = Category.all
  erb :index
end

get '/categories/:id' do
  @category = Category.find_by_id(params[:id])
  p @Category
  @posts    = @category.posts
  erb :category
end

post '/posts' do
  @post = Post.create!(params)
  erb :post 
end
