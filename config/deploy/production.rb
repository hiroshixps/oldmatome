# Define roles, user and IP address of deployment server
# role :name, %{[user]@[IP adde.]}
role :app, %w{root@128.199.134.26}
role :web, %w{root@128.199.134.26}
role :db,  %w{root@128.199.134.26}

# Define server(s)
server '128.199.134.26', user: 'root', roles: %w{web}

# SSH Options
# See the example commented out section in the file
# for more options.
set :ssh_options, {
    forward_agent: false,
    auth_methods: %w(password),
    password: 'choco1831@',
    user: 'root',
}
