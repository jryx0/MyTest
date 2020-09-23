#include "tinytest.h"
#include "user.h"
#include <iostream>

void test() { ASSERT_EQUALS(1, 1); }

int main(void) {
  user *u = new user(1, "test");

  std::cout << "Hello world!" << std::endl;
  std::cout << "This is test main" << std::endl;
  
  u ->toString();
  RUN(test);

  return 0;
}