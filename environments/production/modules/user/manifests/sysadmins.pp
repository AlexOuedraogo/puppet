class user::sysadmins {
  include User::Virtual
  realize(Ssh_user['beheer'])
}

