package controllers

import (
	"fmt"
	"net/http"

	"github.com/amerta-teknologi/go-shop/models"
	"github.com/amerta-teknologi/go-shop/utils"

	"github.com/gin-gonic/gin"
)

type IndexController struct{}

func (ctrl *IndexController) Get() gin.HandlerFunc {
	return func(c *gin.Context) {
		model := models.Product{}
		resp := model.FindAll(c)

		fmt.Println(c.MustGet("user.data"))

		c.HTML(http.StatusOK, "pages/index", gin.H{
			"webview":  utils.Webview,
			"menus":    utils.Menus,
			"products": resp.Data,
			"userData": c.MustGet("user.data"),
		})
	}
}
