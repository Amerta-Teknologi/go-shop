package controllers

import (
	"fmt"
	"net/http"

	"github.com/amerta-teknologi/go-shop/models"
	"github.com/gin-contrib/sessions"
	"github.com/gin-gonic/gin"
)

type AuthController struct{}

func (ctrl *AuthController) Get() gin.HandlerFunc {
	return func(c *gin.Context) {
		c.HTML(http.StatusOK, "pages/auth", gin.H{})
	}
}

func (ctrl *AuthController) SignIn() gin.HandlerFunc {
	return func(c *gin.Context) {
		model := models.Auth{}
		a := model.Login(c)

		fmt.Println(a.Data.AccessToken)

		if a.Data.AccessToken != "" {
			session := sessions.Default(c)
			session.Set("user.key", a.Data.AccessToken)
			session.Set("user.email", a.Data.User.Email)
			session.Set("user.id", a.Data.User.Id)

			if err := session.Save(); err != nil {
				fmt.Println(err.Error())
			}

			c.Redirect(http.StatusFound, "/")
		} else {
			c.Redirect(http.StatusFound, c.Request.Referer())
		}
	}
}

func (ctrl *AuthController) SignOut() gin.HandlerFunc {
	return func(c *gin.Context) {
		session := sessions.Default(c)
		session.Clear()
		session.Save()

		c.Redirect(http.StatusFound, "/")
	}
}
