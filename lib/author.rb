class Author
  attr_accessor :name
  @@all = []
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
    @@all << post
  end
  
  def add_post_by_title(title)
    add_post(Post.new(title))
  end
  
  def self.post_count
    @@all.length
  end
  
end