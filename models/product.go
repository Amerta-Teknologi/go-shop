package models

import (
	"github.com/gin-gonic/gin"
)

type Product struct {
	Slug        string `json:"slug"`
	Name        string `json:"name"`
	Price       int    `json:"price"`
	Image1Url   string `json:"image_1_url"`
	Image2Url   string `json:"image_2_url"`
	Image3Url   string `json:"image_3_url"`
	Image4Url   string `json:"image_4_url"`
	Image5Url   string `json:"image_5_url"`
	Description string `json:"description"`
}

type ProductsResponse struct {
	Data       []Product  `json:"data"`
	Pagination Pagination `json:"pagination"`
}

type ProductResponse struct {
	Data Product `json:"data"`
}

type Pagination struct {
	CurrentPage int `json:"current_page"`
	LastPage    int `json:"last_page"`
	PerPage     int `json:"per_page"`
	Total       int `json:"total"`
}

func (model *Product) FindAll(c *gin.Context) *ProductsResponse {
	var queries string = "?"

	if c.Param("product-slug") != "" {
		queries = queries + "slug=" + c.Param("product-slug") + "&"
	}

	if c.Query("page") == "" {
		queries = queries + "page=1&"
	}

	if c.Query("per_page") == "" {
		queries = queries + "per_page=12&"
	}

	queries = queries + removeEmptyQueries(c.Request.URL.Query())

	response := Get("http://localhost:10081/api/v1/catalog/products" + queries)
	body := GetBody(response, &ProductsResponse{})

	return body.(*ProductsResponse)
}

func (model *Product) Find() *ProductResponse {
	response := Get("http://localhost:10081/api/v1/catalog/product/1")
	body := GetBody(response, &ProductResponse{})

	return body.(*ProductResponse)
}
