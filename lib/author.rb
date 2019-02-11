class Author
  attr_accessor :name
  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_post_by_title(title)
    add_post(Post.new(title))
  end
  
end