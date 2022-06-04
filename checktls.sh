echo "TLS connnection tests to localhost:443"
echo "**************************************"
echo
echo "TLS1_1:"
echo|openssl s_client -connect localhost:443 -tls1_1 -brief
echo
echo "TLS1_3:"
echo|openssl s_client -connect localhost:443 -tls1_3 -brief
echo
echo "TLS1_2:"
echo|openssl s_client -connect localhost:443 -tls1_2 -brief
