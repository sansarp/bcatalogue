# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

#role :app, %w{deploy@example.com}
#role :web, %w{deploy@example.com}
#role :db,  %w{deploy@example.com}


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.=>staging.ar.lftechnology.com


#With ssh password
# set :password, ask('Server password:', nil)
# server '54.172.117.142', user: 'ec2-user', password: fetch(:password), roles: %w{web app db}, primary: :true

#Without ssh key
server '54.172.117.142', user: 'ec2-user', roles: %w{web app db}, primary: :true

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }

set :ssh_options, {
#For ssh key
keys: %w(/home/subash/Desktop/RoR.pem),
forward_agent: true
}

#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }

#Set git branch
set :branch, 'master'

# Default deploy_to directory is /var/www/my_app =>bq_staging
set :deploy_to, '/home/ec2-user/bcatalogue'

set :stage, :staging
set :rails_env, :staging