namespace :firefox do
    task :open do
        server_port = 8081
        system("firefox http://localhost:#{server_port}")
    end
end
