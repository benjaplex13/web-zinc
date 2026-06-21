# Powershell Static File Server
# Runs a local HTTP server on port 8000 to preview the website

param(
    [string]$RootPath = ".",
    [int]$Port = 8000
)

$RootPath = Resolve-Path $RootPath
Write-Host "Iniciando servidor en la ruta: $RootPath"

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$Port/")

try {
    $listener.Start()
    Write-Host "Servidor corriendo en: http://localhost:$Port/"
    Write-Host "Presiona Ctrl+C para detener el servidor."

    while ($listener.IsListening) {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response

        $urlPath = $request.Url.LocalPath
        if ($urlPath -eq "/") {
            $urlPath = "/index.html"
        }

        # Resolve clean file path to prevent directory traversal
        $filePath = Join-Path -Path $RootPath -ChildPath $urlPath.TrimStart('/')
        
        if (Test-Path $filePath -PathType Leaf) {
            $contentBytes = [System.IO.File]::ReadAllBytes($filePath)
            
            # Set mime content type based on extension
            $extension = [System.IO.Path]::GetExtension($filePath).ToLower()
            switch ($extension) {
                ".html" { $response.ContentType = "text/html; charset=utf-8" }
                ".css"  { $response.ContentType = "text/css; charset=utf-8" }
                ".js"   { $response.ContentType = "application/javascript; charset=utf-8" }
                ".png"  { $response.ContentType = "image/png" }
                ".jpg"  { $response.ContentType = "image/jpeg" }
                ".jpeg" { $response.ContentType = "image/jpeg" }
                ".svg"  { $response.ContentType = "image/svg+xml" }
                default { $response.ContentType = "application/octet-stream" }
            }
            
            $response.ContentLength64 = $contentBytes.Length
            if ($request.HttpMethod -ne "HEAD") {
                $response.OutputStream.Write($contentBytes, 0, $contentBytes.Length)
            }
        } else {
            $response.StatusCode = 404
            $errorBytes = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found: $urlPath")
            $response.ContentLength64 = $errorBytes.Length
            if ($request.HttpMethod -ne "HEAD") {
                $response.OutputStream.Write($errorBytes, 0, $errorBytes.Length)
            }
        }
        $response.Close()
    }
} catch {
    Write-Error $_
} finally {
    if ($null -ne $listener) {
        $listener.Close()
    }
}
