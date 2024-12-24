// ImageService.ol
interface ImageServiceInterface {
    RequestResponse:
        processImage(ImageRequest)(ImageResponse)
}

service ImageService {
    execution: concurrent

    inputPort ImageInput {
        location: "socket://localhost:8000"
        protocol: http
        interfaces: ImageServiceInterface
    }

    main {
        processImage(request)(response) {
            // Process image
        }
    }
}

