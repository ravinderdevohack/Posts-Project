class PostEmail
  def initialize(post)
    @post = post
  end

  def send_email
    PostMailer.new_post_email(@post).deliver_now
  end

end
