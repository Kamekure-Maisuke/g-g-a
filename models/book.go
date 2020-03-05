package models

import (
	"fmt"
	"github.com/jinzhu/gorm"
)

type Book struct {
	gorm.Model
	title string
	summary string
	star int
}