root = "/var/www/works.christophergriffith.com/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.works.christophergriffith.sock"
worker_processes 2
timeout 30