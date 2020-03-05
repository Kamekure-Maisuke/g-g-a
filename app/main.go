package main
import (
	"github.com/gin-gonic/gin"
)
func main() {
	// route初期化
	router := gin.Default()
	// view設定
	router.LoadHTMLGlob("template/*.html")
	// データ定義
	data := "t-o-d"
	// route設定
	router.GET("/", func(ctx *gin.Context){
		ctx.HTML(200, "index.html", gin.H{"data": data}) // dataをviewに渡す
	})
	// 起動
	router.Run()
}