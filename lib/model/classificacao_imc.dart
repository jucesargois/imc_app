classificacaoImc(var resultado) {
    if (resultado != null && resultado < 16) {
      return 'Magreza grau III'; //vermelho
    } else if (resultado >= 16.0 && resultado <= 16.9) {
      return 'Magreza grau II'; //vermelho
    } else if (resultado >= 17.0 && resultado <= 18.4) {
      return 'Magreza grau I'; //amarelo
    } else if (resultado >= 18.5 && resultado <= 24.9) {
      return 'Adequado'; //verde
    } else if (resultado >= 25.0 && resultado <= 29.9) {
      return 'Pré-obeso'; //amarelo
    } else if (resultado >= 30.0 && resultado <= 34.9) {
      return 'Obesidade grau I'; //vermelho
    } else if (resultado >= 35.0 && resultado <= 39.9) {
      return 'Obesidade grau II'; //vermelho
    } else if (resultado >= 40.0) {
      return 'Obesidade grau III'; //vermelho
    }
  }