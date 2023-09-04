using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Gestão_Empresarial_Buffet_Divino_Sabor.Negocio
{
    public static class Utils
    {
        public static bool ValidarDocumento(string documento)
        {
            if (string.IsNullOrEmpty(documento))
            {
                return false;
            }

            // Remover caracteres não numéricos
            documento = new string(documento.Where(char.IsDigit).ToArray());

            // Verificar se é CPF
            if (documento.Length == 11)
            {
                int[] multiplicadores1 = { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
                int[] multiplicadores2 = { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };

                string cpf = documento.Substring(0, 9);
                string digito1 = CalcularDigito(cpf, multiplicadores1);
                string digito2 = CalcularDigito(cpf + digito1, multiplicadores2);

                return documento.EndsWith(digito1 + digito2);
            }
            // Verificar se é CNPJ
            else if (documento.Length == 14)
            {
                int[] multiplicadores1 = { 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
                int[] multiplicadores2 = { 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };

                string cnpj = documento.Substring(0, 12);
                string digito1 = CalcularDigito(cnpj, multiplicadores1);
                string digito2 = CalcularDigito(cnpj + digito1, multiplicadores2);

                return documento.EndsWith(digito1 + digito2);
            }
            else
            {
                return false;
            }
        }

        private static string CalcularDigito(string texto, int[] multiplicadores)
        {
            int soma = 0;
            for (int i = 0; i < multiplicadores.Length; i++)
            {
                soma += int.Parse(texto[i].ToString()) * multiplicadores[i];
            }

            int resto = soma % 11;
            int resultado = resto < 2 ? 0 : 11 - resto;

            return resultado.ToString();
        }
    }
}