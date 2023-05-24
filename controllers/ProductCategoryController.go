package controllers

import (
	"net/http"
	"strconv"

	"github.com/amerta-teknologi/go-shop/models"
	"github.com/amerta-teknologi/go-shop/utils"

	"github.com/gin-gonic/gin"
)

type ProductCategoryController struct{}

func (ctrl *ProductCategoryController) GetFind() gin.HandlerFunc {
	return func(c *gin.Context) {
		modelPC := models.ProductCategory{}
		respPC := modelPC.FindAll(c)

		model := models.Product{}
		resp := model.FindAll(c)

		queryParams := c.Request.URL.Query()

		stocks := map[string]string{
			"1": "In Stock",
			"0": "Out of Stock",
		}

		orders := map[string]string{
			"featured desc":   "Featured",
			"sold_total desc": "Best Selling",
			"name desc":       "Alphabetically, A-Z",
			"name asc":        "Alphabetically, Z-A",
			"price desc":      "Price, high to low",
			"price asc":       "Price, low to high",
			"created_at desc": "Date, high to low",
			"created_at asc":  "Date, low to high",
		}

		page := 1
		if c.Query("page") != "" {
			page, _ = strconv.Atoi(c.Query("page"))
		}

		c.HTML(http.StatusOK, "pages/products/categories/detail", gin.H{
			"menus":           utils.Menus,
			"productCategory": respPC.Data[0],
			"products":        resp.Data,
			"pagination":      resp.Pagination,
			"queryParams":     queryParams,
			"stocks":          stocks,
			"orders":          orders,
			"page":            page,
			"search":          c.Query("search"),
			"selectedStocks":  c.QueryArray("quantity[]"),
			"selectedOrder":   c.Query("order"),
			"selectedPrices":  c.QueryArray("price[]"),
			"hideSearch":      true,
		})
	}
}
