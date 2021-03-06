module Proxy::RemoteExecution::Ssh
  class Plugin < Proxy::Plugin
    http_rackup_path File.expand_path("http_config.ru", File.expand_path("../", __FILE__))
    https_rackup_path File.expand_path("http_config.ru", File.expand_path("../", __FILE__))

    settings_file "ssh.yml"
    default_settings :ssh_identity_key_file => '~/.ssh/id_rsa_foreman_proxy',
                     :ssh_user => 'root'
    plugin :ssh, Proxy::RemoteExecution::Ssh::VERSION
  end
end
