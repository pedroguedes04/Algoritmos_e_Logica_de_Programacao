programa {
  inclua biblioteca Util --> u

  const inteiro LINHAS = 2
  const inteiro COLUNAS = 3

  funcao inicio() {
    inteiro matriz[LINHAS][COLUNAS]
    inteiro transposta[COLUNAS][LINHAS]

    preencher_matriz(matriz, LINHAS, COLUNAS)

    escreva("Matriz original (", LINHAS, "x", COLUNAS, "):\n")
    exibir_matriz(matriz, LINHAS, COLUNAS)

    transpor_matriz_diagonal(matriz, transposta, LINHAS, COLUNAS)

    escreva("\nMatriz transposta (", COLUNAS, "x", LINHAS, "):\n")
    exibir_matriz(transposta, COLUNAS, LINHAS)
  }

  funcao preencher_matriz(inteiro matriz[][], inteiro linhas, inteiro colunas) {
    inteiro i, j

    para (i = 0; i < linhas; i++) {
      para (j = 0; j < colunas; j++) {
        matriz[i][j] = u.sorteia(0, 6)
      }
    }
  }

  funcao exibir_matriz(inteiro matriz[][], inteiro linhas, inteiro colunas) {
    inteiro i, j

    para (i = 0; i < linhas; i++) {
      para (j = 0; j < colunas; j++) {
        escreva(matriz[i][j], "\t")
      }
      escreva("\n")
    }
  }

  funcao transpor_matriz_diagonal(inteiro matriz[][], inteiro transposta[][], inteiro linhas, inteiro colunas) {
    inteiro i, j

    para (i = 0; i < linhas; i++) {
      para (j = 0; j < colunas; j++) {
        transposta[j][i] = matriz[i][j]
      }
    }
  }
}