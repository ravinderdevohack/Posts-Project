class FindPost
  def initialize(post)
    @posts = post
  end

  def find
    Post.where("title ilike ?", "%#{@posts}%")
  end
end
