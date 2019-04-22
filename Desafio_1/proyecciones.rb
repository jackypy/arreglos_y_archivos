input_data = open('ventas_base.db').read.split(',')
array = []
input_data.each do |d|
  array.push(d.to_f)
end

suma = 0
suma2 = 0
12.times do |i|
  if i <= 5
    suma += array[i]*1.1
  else
    suma += array[i]
  end
end

12.times do |i|
  if i >= 6
    suma2 += array[i]*1.2
  else
    suma2 += array[i]
  end
end

resultado = "#{suma.to_s}\n#{suma2.to_s}"

File.write("resultados.data", resultado)
