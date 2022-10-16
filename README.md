# Vous devez générer un certificat par nom de domaine ( par virtualhost )

# Localhost-SSL-Cert-Generator
I created these two files to help generating an SSL certificate from a local domain in localhost.

## How to use this ?
1. Clone this repo
2. Open the file cert.conf
3. Go to the last line and change [site.dev] with your local domain
4. Save the file and exit
5. Double click on the ``make-cert.bat`` file to start generating your certificate
6. Complete all required fields
7. The script will create a folder named as same as your local domain.

I'm writing a full tuto on how to setup a localhost SSL certificate to use with your local domain.