
#p_valor <- 1 - pchisq(H, df)
# p-valor asociado al estadístico H
# H = Valor del estadistico H del test KW
# df = k-1 ; Donde k son la cantidad de grupos 
p_valor <- 1 - pchisq(16.17624, 3)
p_valor

# Opcion dos para region critica de KW
# qchisq(1 - ALPHA, df)
# df de la misma forma que el valor p de antes
qchisq(1 - 0.05, 3)




# Datos
valores <- c(68, 72, 75, 70, 73, 80, 85, 78, 83, 79, 74, 70, 69, 72, 71, 92, 88, 90, 89, 87)

# Factor grupo
grupo <- factor(rep(c("A", "B", "C", "D"), each = 5))

# Prueba Kruskal-Wallis
resultado <- kruskal.test(valores ~ grupo)

# Mostrar resultado
print(resultado)

