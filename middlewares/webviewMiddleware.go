package middlewares

import (
	"github.com/amerta-teknologi/go-shop/utils"
	"github.com/gin-gonic/gin"
)

func WebviewMiddleware() gin.HandlerFunc {
	return func(ctx *gin.Context) {
		utils.Webview = 0

		if ctx.Query("wv") == "1" {
			utils.Webview = 1
		}

		ctx.Next()
	}
}
