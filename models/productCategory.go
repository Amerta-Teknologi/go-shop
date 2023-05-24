package models

import "github.com/gin-gonic/gin"

type ProductCategory struct {
	Slug        string `json:"slug"`
	Name        string `json:"name"`
	Description string `json:"description"`
}

type ProductCategoriesResponse struct {
	Data []Product `json:"data"`
}

type ProductCategoryResponse struct {
	Data Product `json:"data"`
}

func (model *ProductCategory) FindAll(c *gin.Context) *ProductCategoriesResponse {
	var queries string = "?page=1&per_page=8"

	if c.Param("product-category-slug") != "" {
		queries = queries + "&slug=" + c.Param("product-category-slug")
	}

	response := Get("http://localhost:10081/api/v1/category/products" + queries)
	body := GetBody(response, &ProductCategoriesResponse{})

	return body.(*ProductCategoriesResponse)
}

func (model *ProductCategory) Find() *ProductCategoryResponse {
	response := Get("http://localhost:10081/api/v1/category/product/1")
	body := GetBody(response, &ProductCategoryResponse{})

	return body.(*ProductCategoryResponse)
}
