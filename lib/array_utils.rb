class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end

  def self.divisiveis(num1, num2)
    divisivel_por_ambos = []
    divisivel_apenas_num1 = []
    divisivel_apenas_num2 = []

    (1..50).each do |num|
      if num % num1 == 0 && num % num2 == 0
        divisivel_por_ambos << num
      elsif num % num1 == 0
        divisivel_apenas_num1 << num
      elsif num % num2 == 0
        divisivel_apenas_num2 << num
      end
    end
    [divisivel_por_ambos, divisivel_apenas_num1, divisivel_apenas_num2]
  end

  def self.soma(array)
    array.inject(0) { |soma, elemento| soma + elemento }
  end

  def self.combinar(array1, array2)
    resultado = []
    array1.each do |a|
      array2.each do |b|
        resultado << [a, b]
      end
    end
    resultado
  end
end
