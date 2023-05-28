package models

import (
	"bytes"
	"fmt"
	"io/ioutil"
	"net/http"

	"github.com/gin-gonic/gin"
)

type Cart struct {
	Id        int     `json:"id"`
	ProductId int     `json:"product_id"`
	UserId    int     `json:"user_id"`
	Quantity  int     `json:"Quantity"`
	Product   Product `json:"product"`
}

type CartResponse struct {
	Data []Cart `json:"data"`
}

func (model *Cart) FindAll(c *gin.Context) *CartResponse {
	response := Get("http://localhost:10081/api/v1/catalog/carts")
	body := GetBody(response, &CartResponse{})

	return body.(*CartResponse)
}

func (model *Cart) Post(c *gin.Context) *CartResponse {
	// Read the request body
	requestBody, err := ioutil.ReadAll(c.Request.Body)

	fmt.Println(string(requestBody))

	if err != nil {
		c.String(http.StatusInternalServerError, "Error reading request body")
		return &CartResponse{}
	}

	response := Post("http://localhost:10081/api/v1/catalog/cart", "application/x-www-form-urlencoded", bytes.NewBuffer(requestBody))
	body := GetBody(response, &CartResponse{})

	return body.(*CartResponse)
}
