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

