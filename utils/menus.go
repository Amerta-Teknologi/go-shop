package utils

import models "github.com/amerta-teknologi/go-shop/models"

var Menus []models.Menu

func SetMenu() {
	menu := models.Menu{}
	resp := menu.FindAll()
	Menus = resp.Data
}
