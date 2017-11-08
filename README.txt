certgen

  `certgen` is a small utility for generating certificates.

Usage:
  
  certgen [domain [...]]

Requirements:

  - openssl

Example:
  
  Suppose we want to generate a certificate for `test.com`
  so that we can test an HTTP2 setup using HAProxy.

    ./certgen test.com

    INFO:
      Starting certificate generation.
      
      DOMAIN=test.com
      KEY_NAME=key_test.com.pem
      CERT_NAME=cert_test.com.pem
      HAPROXY_CERT=haproxy_test.com.pem
      OPENSSL_CONF=/var/folders/hb/wvttlxt51xl_m1wmtrj_k4sh0000gn/T/tmp.IdudKFSt
      
    Generating a 4096 bit RSA private key
    ..................++
    .......++
    writing new private key to 'key_test.com.pem'
    -----

    SUCCESS:
      Certificates successfully generated.

      You can inspect the certificate by issuing the following command:

        openssl x509 -in cert_test.com.pem -text -noout

    Done.

  Now that we have our certificate generated, run the inspection command:

    Certificate:
        ...
            Issuer: C=BR, ST=SaoPaulo, L=SaoPaulo, O=TestOrg, OU=TestUnit, CN=test.com
            Validity
                Not Before: Nov  8 12:31:51 2017 GMT
                Not After : Nov  8 12:31:51 2019 GMT
            Subject: C=BR, ST=SaoPaulo, L=SaoPaulo, O=TestOrg, OU=TestUnit, CN=test.com
            ...
                RSA Public Key: (4096 bit)
                        ...
                X509v3 Subject Alternative Name: 
                    DNS:test.com
        ...

    Check that Chrome takes the certificate: 

      - https://dl.filla.be/f0HzxmUr3

