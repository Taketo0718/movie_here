("#comments_area").html("<%= j(render 'index', { comments: @comment.movie.comments }) %>")
("textarea").val('')