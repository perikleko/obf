Add-Type @"
using System.Net;
using System.Security.Cryptography.X509Certificates;

public class TrustAllCertsPolicy : ICertificatePolicy {
    public bool CheckValidationResult(
        ServicePoint srvPoint, X509Certificate certificate,
        WebRequest request, int certificateProblem) {
        return true;
    }
}
"@

[System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy

Invoke-WebRequest -Uri "https://192.168.248.131:7443/direct/download/265129df-eb2d-4f4a-91d0-fd5a3a9cc429" -OutFile "appp.zip"
