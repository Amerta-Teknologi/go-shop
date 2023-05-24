package models

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"net/url"
)

func Get(url string) *http.Response {
	// Send a GET request to the endpoint
	response, err := http.Get(url)

	if err != nil {
		fmt.Println("Request failed:", err)
		return nil
	}

	return response
}

func GetBody(response *http.Response, strt any) any {
	defer response.Body.Close()

	body, err := ioutil.ReadAll(response.Body)
	if err != nil {
		fmt.Println("Failed to read response body:", err)
	}

	err = json.Unmarshal(body, strt)

	if err != nil {
		fmt.Println("Error:", err)
	}

	return strt
}

func removeEmptyQueries(params url.Values) string {
	filteredParams := url.Values{}

	for key, values := range params {
		for _, value := range values {
			if value != "" {
				filteredParams.Add(key, value)
			}
		}
	}

	return filteredParams.Encode()
}
