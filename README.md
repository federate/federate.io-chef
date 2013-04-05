#federate.io-chef

######Install Ruby Dependencies
````
    bundle install
    librarian-chef install
````

######Prepare A Node
````
    knife solo prepare user@node
````

######Cook A Node
````
    knife solo cook user@node
````