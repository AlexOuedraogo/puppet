class user::sysadmins {
  include User::Virtual::Ssh_user
  realize(Ssh_user['beheer'])
}

