package controllers

import (
	"net/http"

	"github.com/amerta-teknologi/go-shop/models"
	"github.com/amerta-teknologi/go-shop/utils"

	"github.com/gin-gonic/gin"
)

type IndexController struct{}

func (ctrl *IndexController) Get() gin.HandlerFunc {
	return func(c *gin.Context) {
		queryParams := c.Request.URL.Query()
		queryParams.Set("per_page", "8")

		model := models.Product{}
		resp := model.FindAll(c)

		c.HTML(http.StatusOK, "pages/index", gin.H{
			"menus":    utils.Menus,
			"products": resp.Data,
		})
	}
}
