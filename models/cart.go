package models

import (
	"bytes"
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

type Summary struct {
	Total int `json:"total"`
}

type CartsResponse struct {
	Status  string  `json:"status"`
	Message string  `json:"message"`
	Data    []Cart  `json:"data"`
	Summary Summary `json:"summary"`
}

type CartResponse struct {
	Status  string  `json:"status"`
	Message string  `json:"message"`
	Data    Cart    `json:"data"`
	Summary Summary `json:"summary"`
}

func (model *Cart) FindAll(c *gin.Context) *CartsResponse {
	response := Get("http://localhost:10082/api/v1/carts")
	body := GetBody(response, &CartsResponse{})

	return body.(*CartsResponse)
}

func (model *Cart) Post(c *gin.Context) *CartResponse {
	// Read the request body
	requestBody, err := ioutil.ReadAll(c.Request.Body)

	if err != nil {
		c.String(http.StatusInternalServerError, "Error reading request body")
		return &CartResponse{}
	}

	response := Post("http://localhost:10082/api/v1/carts", "application/x-www-form-urlencoded", bytes.NewBuffer(requestBody))
	body := GetBody(response, &CartResponse{})

	return body.(*CartResponse)
}

func (model *Cart) Put(c *gin.Context) *CartsResponse {
	// Read the request body
	requestBody, err := ioutil.ReadAll(c.Request.Body)

	if err != nil {
		c.String(http.StatusInternalServerError, "Error reading request body")
		return &CartsResponse{}
	}

	response := Put("http://localhost:10082/api/v1/carts", "application/x-www-form-urlencoded", bytes.NewBuffer(requestBody))
	body := GetBody(response, &CartsResponse{})

	return body.(*CartsResponse)
}

func (model *Cart) Del(c *gin.Context) *CartResponse {
	response := Del("http://localhost:10082/api/v1/carts/" + c.Param("userId") + "/" + c.Param("id"))
	body := GetBody(response, &CartResponse{})

	return body.(*CartResponse)
}
