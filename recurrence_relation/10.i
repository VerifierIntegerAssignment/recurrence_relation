  int _1_PROVE = 0;
  int x;
  x = __VERIFIER_nondet_int();
  int y;
  y = __VERIFIER_nondet_int();
  int k;
  k = __VERIFIER_nondet_int();
  int z;
  z = 1;
  if (k <= 1073741823)
  {
    L1:
    

    while (z < k)
    {
      z = 2 * z;
    }

    _1_PROVE = z >= 2;
    L2:
    

    while ((x > 0) && (y > 0))
    {
      _Bool c;
      c = __VERIFIER_nondet_bool();
      if (c > 0)
      {
        P1:
        

        x = x - d;
        y = __VERIFIER_nondet_bool();
        z = z - 1;
      }
      else
      {
        y = y - d;
      }

    }

  }
