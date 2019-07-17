double b[50];
  double x[50];
  double a[50][50];
  int break_1_flag;
  break_1_flag = 0;
  int RET;
  RET = 0;
  int i;
  int j;
  int k;
  double w;
  double y[100];
  if ((n > 99) || (eps <= 0.0))
  {
    RET = 999;
  }

  if ((n <= 99) && (eps > 0.0))
  {
    i = 0;
    while ((i < n) && (break_1_flag == 0))
    {
      break_1_flag = 0;
      if (fabs(a[i][i]) <= eps)
      {
        RET = 1;
      }

      if (fabs(a[i][i]) > eps)
      {
        j = i + 1;
        while (j <= n)
        {
          w = a[j][i];
          if (i != 0)
          {
            k = 0;
            while (k < i)
            {
              w = w - (a[j][k] * a[k][i]);
              k = k + 1;
            }

          }

          a[j][i] = w / a[i][i];
          j = j + 1;
        }

        j = i + 1;
        while (j <= n)
        {
          w = a[i + 1][j];
          k = 0;
          while (k <= i)
          {
            w = w - (a[i + 1][k] * a[k][j]);
            k = k + 1;
          }

          a[i + 1][j] = w;
          j = j + 1;
        }

        i = i + 1;
      }

      if (fabs(a[i][i]) <= eps)
      {
        break_1_flag = 1;
      }

    }

    y[0] = b[0];
    i = 1;
    while (i <= n)
    {
      w = b[i];
      j = 0;
      while (j < i)
      {
        w = w - (a[i][j] * y[j]);
        j = j + 1;
      }

      y[i] = w;
      i = i + 1;
    }

    x[n] = y[n] / a[n][n];
    i = n - 1;
    while (i >= 0)
    {
      w = y[i];
      j = i + 1;
      while (j <= n)
      {
        w = w - (a[i][j] * x[j]);
        j = j + 1;
      }

      x[i] = w / a[i][i];
      i = i - 1;
    }

    RET = 0;
  }
