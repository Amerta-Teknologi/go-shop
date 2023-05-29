package main

import (
	"fmt"
	"html/template"
	"strings"

	controllers "github.com/amerta-teknologi/go-shop/controllers"
	"github.com/amerta-teknologi/go-shop/middlewares"
	utils "github.com/amerta-teknologi/go-shop/utils"

	"github.com/gin-gonic/gin"
)

func main() {
	var group gin.IRoutes
	r := gin.Default()

	html := template.Must(template.New("").Delims("{{", "}}").Funcs(template.FuncMap{
		"nl2br":   nl2br,
		"in":      in,
		"add":     add,
		"sub":     sub,
		"explode": ExplodeFunc,
	}).ParseFiles(utils.Filewalk()...))
	debugPrintLoadTemplate(html)

	r.SetHTMLTemplate(html)

	utils.SetMenu()

	r.Static("/assets", "./public/assets")
	r.Static("/images", "./public/images")

	r.Use(middlewares.WebviewMiddleware())

	ctrl := controllers.IndexController{}
	r.GET("", ctrl.Get()).Use(middlewares.WebviewMiddleware())

	group = r.Group("/products")
	{
		ctrl := controllers.ProductController{}
		group.GET("", ctrl.GetFindAll())
		group.GET("/:product-slug", ctrl.GetFind())
	}

	group = r.Group("/products/categories")
	{
		ctrl := controllers.ProductCategoryController{}
		group.GET("/:product-category-slug", ctrl.GetFind())
	}

	group = r.Group("/carts")
	{
		ctrl := controllers.CartController{}
		group.POST("", ctrl.Post())
		group.GET("", ctrl.Get())
		group.PUT("/:id", ctrl.Put())
		group.DELETE("/:id", ctrl.Del())
	}

	r.Run("localhost:8080")
}

func debugPrintLoadTemplate(tmpl *template.Template) {
	var buf strings.Builder
	for _, tmpl := range tmpl.Templates() {
		buf.WriteString("\t- ")
		buf.WriteString(tmpl.Name())
		buf.WriteString("\n")
	}
	utils.DebugPrint("Loaded HTML Templates (%d): \n%s\n", len(tmpl.Templates()), buf.String())
}

// Custom template function to replace newline characters with <br> tags
func nl2br(s string) template.HTML {
	return template.HTML(strings.ReplaceAll(s, "\n", "<br>"))
}

func in(value any, options []string) bool {
	strValue := fmt.Sprintf("%v", value)
	for _, option := range options {
		if strValue == fmt.Sprintf("%v", option) {
			return true
		}
	}
	return false
}

func add(a, b int) int {
	return a + b
}

func sub(a, b int) int {
	return a - b
}

func ExplodeFunc(input string, separator string) []string {
	return strings.Split(input, separator)
}
