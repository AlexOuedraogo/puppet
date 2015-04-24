class user::sysadmins {
  search User::Virtual
  realize(Ssh_user['beheer'])
  realize(Ssh_user['jamil'])
  realize(Ssh_user['scarlet'])
}

