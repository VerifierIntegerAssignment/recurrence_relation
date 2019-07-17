  int RET;
  RET = 0;
  int _1_PROVE = 0;
  char string_entrada[10];
  char vetor_vogais[];
  vetor_vogais[0] = 'a';
  vetor_vogais[1] = 'A';
  vetor_vogais[2] = 'e';
  vetor_vogais[3] = 'E';
  vetor_vogais[4] = 'i';
  vetor_vogais[5] = 'I';
  vetor_vogais[6] = 'o';
  vetor_vogais[7] = 'O';
  vetor_vogais[8] = 'u';
  vetor_vogais[9] = 'U';
  vetor_vogais[10] = '\0';
  unsigned int i;
  unsigned int j;
  unsigned int cont;
  unsigned int tam_string;
  unsigned int n_caracter;
  i = 0;
  while (i < 10)
  {
    string_entrada[i] = __VERIFIER_nondet_char();
    i = i + 1;
  }

  string_entrada[10 - 1] = '\0';
  n_caracter = 0;
  while (string_entrada[n_caracter] != '\0')
  {
    n_caracter = n_caracter + 1;
  }

  cont = 0;
  i = 0;
  while (i < n_caracter)
  {
    j = 0;
    while (j < 8)
    {
      if (string_entrada[i] == vetor_vogais[j])
        cont = cont + 1;

      j = j + 1;
    }

    i = i + 1;
  }

  i = 0;
  int cont_aux;
  cont_aux = 0;
  while (string_entrada[i] != '\0')
  {
    j = 0;
    while (j < 10)
    {
      if (string_entrada[i] == vetor_vogais[j])
        cont_aux = cont_aux + 1;

      j = j + 1;
    }

    i = i + 1;
  }