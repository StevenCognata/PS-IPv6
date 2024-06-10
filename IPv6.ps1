try {
    Get-NetAdapterBinding -ComponentID 'ms_tcpip6' | Disable-NetAdapterBinding -ComponentID 'ms_tcpip6' -PassThru
    Write-Output "IPv6 disabled on Windows"
} catch {
    Write-Output "Failed to disable IPv6 on Windows: $_"
}