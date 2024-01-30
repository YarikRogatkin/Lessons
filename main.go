func main() {
	a:= app.New()
	w:= a.NewWindow("SUBSCRIBE:)")
	w.Resize(fyne.NewSize(500,500))
	table := widget.Newtable (
		func() (int, int){
			return 3,3
},
func () fyne.CanvasObject{
	return widjet.NewTable("Defult text")
},
func (tci widget.TableCellID, co fyne.CanvasObject){

},
		)
	w.SetContent(table)
	w.Show()
	a.Run()
}


"