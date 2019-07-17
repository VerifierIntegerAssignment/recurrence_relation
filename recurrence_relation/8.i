
  int RET;
  RET = 0;
  int _1_PROVE = 0;
  int x;
  x = __VERIFIER_nondet_int();
  int y;
  y = __VERIFIER_nondet_int();
  int z;
  z = __VERIFIER_nondet_int();
  while ((x < 100) && (100 < z))
  {
    _Bool tmp;
    tmp = __VERIFIER_nondet_bool();
    if (tmp > 0)
    {
      x = x + 1;
    }
    else
    {
      x = x - 1;
      z = z - 1;
    }

  }