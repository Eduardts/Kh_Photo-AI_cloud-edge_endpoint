// ImageController.fs
[<ApiController>]
[<Route("api/[controller]")>]
type ImageController(logger: ILogger<ImageController>) =
    inherit ControllerBase()

    [<HttpPost>]
    member _.UploadImage([<FromForm>] file: IFormFile) =
        task {
            let fileName = Path.GetFileName(file.FileName)
            let filePath = Path.Combine("uploads", fileName)
            
            use stream = new FileStream(filePath, FileMode.Create)
            do! file.CopyToAsync(stream)
            
            return Ok(sprintf "File %s uploaded successfully" fileName)
        }

