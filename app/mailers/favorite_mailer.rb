class FavoriteMailer < ApplicationMailer
  default from: "youremail@email.com"

  def new_comment(user, post, comment)

    headers["MESSAGE-ID"] = "<comments/#{comment.id}@glance.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@glance.example>"
    headers["References"] = "<post/#{post.id}@glance.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
