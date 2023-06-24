package middlewares

import (
	"github.com/amerta-teknologi/go-shop/models"
	"github.com/gin-contrib/sessions"
	"github.com/gin-gonic/gin"
)

func SessionMiddleware() gin.HandlerFunc {
	return func(ctx *gin.Context) {

		session := sessions.Default(ctx)

		if key := session.Get("user.key"); key != nil {
			ctx.Set("user.key", key)

			ctx.Set("user.data", models.User{
				Id:    session.Get("user.id").(int),
				Email: session.Get("user.email").(string),
			})
		} else {
			ctx.Set("user.key", "")

			ctx.Set("user.data", models.User{
				Id:    0,
				Email: "",
			})
		}

		ctx.Next()
	}
}
