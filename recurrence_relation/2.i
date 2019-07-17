  int break_1_flag;
  break_1_flag = 0;
  int RET;
  RET = 0;
  int _1_PROVE[1000000];
  int _2_PROVE[1000000];
  int _3_PROVE = 0;
  int i;
  i = 0;
  int x;
  x = 0;
  int y;
  y = 0;
  int n;
  n = __VERIFIER_nondet_int();
  if (n <= 0)
  {
    RET = 0;
  }

  if (n > 0)
  {
    i = 0;
    while ((i < n) && (break_1_flag == 0))
    {
      break_1_flag = 0;
      x = x - y;
      _1_PROVE[i] = x == 0;
      y = __VERIFIER_nondet_int();
      if (y == 0)
      {
        RET = 0;
      }

      if (y != 0)
      {
        x = x + y;
        _2_PROVE[i] = x != 0;
        i = i + 1;
      }

      if (y == 0)
      {
        break_1_flag = 1;
      }

    }

    _3_PROVE = x == 0;
  }