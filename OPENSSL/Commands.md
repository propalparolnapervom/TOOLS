# OPENSSL

## Check

### SSL connectivity
Test SSL connectivity to check whether the certificate is valid, trusted, and complete
(to ensure the server sends the complete certificate chain the openssl command-line utility may be used)

```
openssl s_client -connect www.godaddy.com:443

openssl s_client -connect www.godaddy.com:443 -showcerts


```









