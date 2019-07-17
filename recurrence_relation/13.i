  double b[50];
  double a[50][50];
  int RET;
  RET = 0;
  int _1_PROVE[1000000];
  int i;
  int j;
  int nmax;
  nmax = 50;
  int n;
  n = 5;
  int chkerr;
  double eps;
  double w;
  eps = 0.00000100000000000000000000000000000;
  i = 0;
  while (i <= n)
  {
    w = 0.0;
    j = 0;
    while (j <= n)
    {
      a[i][j] = (i + 1) + (j + 1);
      if (i == j)
      {
        a[i][j] = a[i][j] * 10.0000000000000;
      }

      w = w + a[i][j];
      j = j + 1;
    }

    _1_PROVE[i] = i < 50;
    b[i] = w;
    i = i + 1;
  }

  chkerr = ludcmp(nmax, n, eps);
  RET = 0;