class user::sysadmins {
  User::Virtual::Ssh_user
  realize(Ssh_user['beheer'])
}

