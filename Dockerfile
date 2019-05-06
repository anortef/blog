FROM httpd:alpine

COPY ./_site/ /usr/local/apache2/htdocs/
