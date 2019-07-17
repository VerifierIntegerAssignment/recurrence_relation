  int _1_PROVE = 0;
  int i;
  int j;
  j = 10;
  int n;
  n = __VERIFIER_nondet_uint();
  int sn;
  sn = 0;
  i = 1;
  while (i <= n)
  {
    if (i < j)
    {
      sn = sn + 2;
    }

    j = j - 1;
    i = i + 1;
  }
