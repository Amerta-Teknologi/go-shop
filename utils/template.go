package utils

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"
	"text/template"

	"github.com/gin-gonic/gin"
)

func DebugPrintLoadTemplate(tmpl *template.Template) {
	var buf strings.Builder
	for _, tmpl := range tmpl.Templates() {
		buf.WriteString("\t- ")
		buf.WriteString(tmpl.Name())
		buf.WriteString("\n")
	}
	DebugPrint("Loaded HTML Templates (%d): \n%s\n", len(tmpl.Templates()), buf.String())
}

func DebugPrint(format string, values ...any) {
	if !strings.HasSuffix(format, "\n") {
		format += "\n"
	}
	fmt.Fprintf(gin.DefaultWriter, "[GIN-debug] "+format, values...)
}

func Filewalk() []string {
	files := []string{}

	filepath.Walk("views", func(path string, info os.FileInfo, err error) error {

		extension := strings.ToLower(filepath.Ext(path))

		if extension == ".html" {
			files = append(files, path)
		}

		return nil
	})

	return files
}
