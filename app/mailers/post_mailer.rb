class PostMailer < ApplicationMailer
  def new_post_email(post)
    @post = post

    mail(from: '7532970388sac@gmail.com', to:'ravinder@devohack.com', subject: "You created a Post")
  end
end
