  #language: pt
  Funcionalidade: Converte números decimais em sua versão por extenso.
  
  Esquema do Cenário: Conversão de valores válidos em português
  Quando que faço a requisição para api em português com o <numero> decimal
  Então vejo status code 200
  E vejo o json em português com <valor_extenso>
  
  Exemplos:
      | numero | valor_extenso | 
      | -10000 | menos dez mil | 
      | 0      | zero          | 
      | 10000  | dez mil       | 
  
  Esquema do Cenário: Conversão de valores inválidos em português
  Quando que faço a requisição para api em português com o <numero> decimal
  Então vejo status code 400
  E vejo o json em português com <valor_extenso>
  
  Exemplos:
      | numero | valor_extenso | 
      | -10001 | Invalid data  | 
      | 10001  | Invalid data  |

Esquema do Cenário: Conversão de valores válidos em inglês
  Quando que faço a requisição para api em inglês com o <numero> decimal
  Então vejo status code 200
  E vejo o json em inglês com <valor_extenso>
  
  Exemplos:
      | numero | valor_extenso      | 
      | -10000 | minus ten thousand | 
      | 0      | zero               | 
      | 10000  | ten thousand       | 

  Esquema do Cenário: Conversão de valores inválidos em inglês
  Quando que faço a requisição para api em inglês com o <numero> decimal
  Então vejo status code 400
  E vejo o json em inglês com <valor_extenso>
  
  Exemplos:
      | numero | valor_extenso | 
      | -10001 | Invalid data  | 
      | 10001  | Invalid data  |