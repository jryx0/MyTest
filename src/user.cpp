#include "user.h"
#include <iostream>

user::user(int id) {
  this->ID = id;
  name = NULL;
}

user::user(int id, const char *name) {
  this->ID = id;
  this->name = (char *)malloc(strlen(name) + 1);
  strcpy(this->name, name);
}

user::~user() {
  if (this->name != NULL)
    delete this->name;
}

void user::toString(void) {
  printf("C style>>>>user id:%d, user name:%s\r\n", this->ID, this->name);

  std::cout << "C++ sytle>>>>>user id:" << this->ID << ",user name:" << this->name
            << std::endl;
}