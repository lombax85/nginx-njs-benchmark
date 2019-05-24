# Benchmark of njs on nginx
## Project startup

    git clone
    sh pull.sh
    sh restart.sh
    
Check that the Docker container is started with `docker ps` and try to reach the following paths via browser:

    http://localhost:81/js
    http://localhost:81/static/static_file.txt
    
You should see respectively  an `Hello world!` and a `static file` content
Now you are ready to start the benchmark and find the results in the `results` folder.

## access to private file
You must have a valid JWT token, for example

    http://localhost:81/private/private_file.txt?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.XbPfbIHMI6arZ3Y922BhjWgQzWXcXNrz0ogtVhfEd2o
    
will return `private file`

but using a wrong token

    http://localhost:81/private/private_file.txt?token=xxx

will return an error