# Log parser
A ruby script that accepts a webserver log file and returns the number of views per page

### Setup
```
bundle
```
## Run tests
```
rspec
```

## Run script
```
cd bin
ruby parser.rb ../data/webserver.log


Example output:
View count for each page:
/contact/ 155 visits
/products/3 149 visits
/home 143 visits
products/1 142 visits
/about 141 visits
/index 141 visits
/products/2 129 visits

Unique view count for each page:
/products/2 20 visits
products/1 20 visits
/products/3 20 visits
/about 20 visits
/index 20 visits
/contact/ 20 visits
/home 20 visits
```
