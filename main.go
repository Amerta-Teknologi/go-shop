package main

import (
	"fmt"
	"html/template"
	"strings"

	controllers "github.com/amerta-teknologi/go-shop/controllers"
	utils "github.com/amerta-teknologi/go-shop/utils"

	"github.com/gin-gonic/gin"
)

func main() {
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

	index := controllers.IndexController{}
	r.GET("/", index.Get())

	product := controllers.ProductController{}
	r.GET("/products", product.GetFindAll())
	r.GET("/products/:product-slug", product.GetFind())

	productCategory := controllers.ProductCategoryController{}
	r.GET("/products/categories/:product-category-slug", productCategory.GetFind())

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
