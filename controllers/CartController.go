package controllers

import (
	"net/http"

	"github.com/amerta-teknologi/go-shop/models"
	"github.com/amerta-teknologi/go-shop/utils"

	"github.com/gin-gonic/gin"
)

type CartController struct{}

func (ctrl *CartController) Get() gin.HandlerFunc {
	return func(c *gin.Context) {
		model := models.Cart{}
		resp := model.FindAll(c)

		c.HTML(http.StatusOK, "pages/carts", gin.H{
			"webview":  utils.Webview,
			"menus":    utils.Menus,
			"carts":    resp.Data,
			"summary":  resp.Summary,
			"userData": c.MustGet("user.data"),
		})
	}
}

func (ctrl *CartController) Post() gin.HandlerFunc {
	return func(c *gin.Context) {
		model := models.Cart{}
		model.Post(c)

		c.Redirect(http.StatusFound, "/carts")
	}
}

func (ctrl *CartController) Put() gin.HandlerFunc {
	return func(c *gin.Context) {
		model := models.Cart{}
		resp := model.Put(c)
		c.JSON(200, resp)
	}
}

func (ctrl *CartController) Del() gin.HandlerFunc {
	return func(c *gin.Context) {
		model := models.Cart{}
		resp := model.Del(c)
		c.JSON(200, resp)
	}
}
