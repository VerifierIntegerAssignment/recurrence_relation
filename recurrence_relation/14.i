  int RET;
  RET = 0;
  int _1_PROVE[1000000];
  unsigned int SIZE;
  SIZE = __VERIFIER_nondet_uint();
  int i;
  int j;
  int k;
  int key;
  int v[SIZE];
  j = 1;
  while (j < SIZE)
  {
    key = v[j];
    i = j - 1;
    while ((i >= 0) && (v[i] > key))
    {
      v[i + 1] = v[i];
      i = i - 1;
    }

    v[i + 1] = key;
    j = j + 1;
  }

  k = 1;
  while (k < SIZE)
  {
    _1_PROVE[k] = v[k - 1] <= v[k];
    k = k + 1;
  }

  RET = 0;