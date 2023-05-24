package models

type Menu struct {
	Id       int    `json:"id"`
	Name     string `json:"name"`
	Url      string `json:"url"`
	Sequence int    `json:"sequence"`
}

type MenusResponse struct {
	Data []Menu `json:"data"`
}

func (model *Menu) FindAll() *MenusResponse {
	response := Get("http://localhost:10081/api/v1/catalog/menus?order=sequence%20asc")
	body := GetBody(response, &MenusResponse{})

	return body.(*MenusResponse)
}
