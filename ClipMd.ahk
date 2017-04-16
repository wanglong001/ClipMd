#Include Gdip_All.ahk
hexoPath := "D:/github/wanglong001/"
PicPath := hexoPath . "themes/next/source/images/" 
imageFormat := "png"
filenameFormat := "yyyyMMdd_HHmmss"
httpPath := "http://wanglong001.github.io/images/"
isPushWhenSave := false




^F1::
    ; 保存图片的位置和格式
    FormatTime, currentFilenameFormat, A_Now, %filenameFormat%
    savePath := PicPath . currentFilenameFormat . "." . imageFormat
    saveHttpPath := httpPath . currentFilenameFormat . "." . imageFormat
   createPic(savePath)
   clipboard := "![image](" . saveHttpPath . ")" 
   send, ^v
   if  isPushWhenSave
       send, ^F2
return

^F2::
  run,cmd /c cd /D %hexoPath% & hexo g & hexo d 
return


F8::
 ExitApp
return

createPic(PicPath)
{
	pToken := Gdip_Startup() ; Start gdi+
        ; pBitmapAlpha := Gdip_CreateBitmapFromFile(PicPath)
        ;pBitmapAlpha := Gdip_BitmapFromScreen(0, "")

	;pBitmapAlpha := Gdip_BitmapFromScreen(x "|" y "|" width "|" height)
        pBitmapAlpha := Gdip_CreateBitmapFromClipboard()
        ImgWidth := Gdip_GetImageWidth(pBitmapAlpha)  ; 获取宽度，高度，可省略
        ImgHeight := Gdip_GetImageHeight(pBitmapAlpha)
 
        Gdip_SaveBitmapToFile(pBitmapAlpha, PicPath,"255") ;第三个参数控制图片质量
        Gdip_DisposeImage(pBitmapAlpha)
        
	Gdip_Shutdown(pToken) ; close gdi+
	Traytip, 截图完毕:, 宽: %ImgWidth% 高: %ImgHeight%`n保存为: %PicPath%
}



