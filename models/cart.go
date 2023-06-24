package models

import (
	"bytes"
	"io/ioutil"
	"net/http"
	"strconv"

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
	userData, _ := c.Get("user.data")
	user, _ := userData.(User)

	response := Get("http://localhost:10082/api/v1/carts?user_id=" + strconv.Itoa(user.Id))
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

	userData, _ := c.Get("user.data")
	user, _ := userData.(User)

	requestBody = []byte(string(requestBody) + "&user_id=" + strconv.Itoa(user.Id))

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

	userData, _ := c.Get("user.data")
	user, _ := userData.(User)

	requestBody = []byte(string(requestBody) + "&user_id=" + strconv.Itoa(user.Id))

	response := Put("http://localhost:10082/api/v1/carts", "application/x-www-form-urlencoded", bytes.NewBuffer(requestBody))
	body := GetBody(response, &CartsResponse{})

	return body.(*CartsResponse)
}

func (model *Cart) Del(c *gin.Context) *CartResponse {
	userData, _ := c.Get("user.data")
	user, _ := userData.(User)

	response := Del("http://localhost:10082/api/v1/carts/" + strconv.Itoa(user.Id) + "/" + c.Param("id"))
	body := GetBody(response, &CartResponse{})

	return body.(*CartResponse)
}
