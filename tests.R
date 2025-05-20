# Tests.R
# Archivo de pruebas
test_trial1 <- function(gastos_mayores_transporte) {
	# Ciudades esperadas
	ciudades_esperadas <- c("Armenia", "Bogotá", "Bucaramanga y A.M.", "Cali", "Manizales y A.M.", "Medellín y A.M.", "Neiva", "Rionegro", "Tunja", "Villavicencio")
	
	# Verificación
	if (all(c("Ciudad", "Transporte") %in% colnames(gastos_mayores_transporte))) {
	  if ( nrow(gastos_mayores_transporte) == 10 ) {
	    if (all(gastos_mayores_transporte$Ciudad %in% ciudades_esperadas)) {
	      cat("La variable cumple con todas las condiciones.\n")
	    } else {
	      cat("Los valores de la columna 'Ciudad' no coinciden con los esperados.\n")
	    }
	  } else {
	    cat("La variable no tiene exactamente 10 filas.\n")
	  }
	} else {
	  cat("La variable no tiene las columnas requeridas.\n")
	}
}
hint_trial1 <- function() {
  cat(
    "🔍 Pista para continuar:\n\n",
    "Recuerda que el objetivo es **filtrar** el conjunto de datos `gasto_col_df` ",
    "para conservar únicamente las filas donde la columna `Transporte` tenga un valor **mayor a 70**.\n\n",
    "Una vez hecho el filtro, debes **seleccionar solo dos columnas**: `\"Ciudad\"` y `\"Transporte\"`.\n\n",
    "Piensa en usar la función `subset()` para aplicar la condición lógica y, si lo necesitas, ",
    "combínala con el operador de corchetes `[,]` para elegir las columnas que quieres conservar.\n\n",
    "Verifica también que el resultado tenga **únicamente las ciudades que cumplen con el criterio** ",
    "y que estás guardando ese nuevo conjunto en una variable llamada `gastos_mayores_transporte`.\n",
    sep = ""
  )
}
solution_trial1 <- function(){
  cat('gastos_mayores_transporte <- subset(gasto_col_df, Transporte > 70)[, c("Ciudad", "Transporte")]')

  e
  cat("✅ Explicación de la solución:\n\n")
  
  cat("La instrucción:\n")
  cat('gastos_mayores_transporte <- subset(gasto_col_df, Transporte > 70)[, c("Ciudad", "Transporte")]\n\n')
  
  cat("realiza dos operaciones encadenadas para construir el resultado deseado:\n\n")
  
  cat("1. 🔹 Filtrado con `subset()`:\n")
  cat("   Se seleccionan únicamente aquellas filas del data frame `gasto_col_df`\n")
  cat("   en las que el valor de la columna `Transporte` es mayor a 70.\n")
  cat("   Ejemplo: subset(gasto_col_df, Transporte > 70)\n\n")
  
  cat("2. 🔹 Selección de columnas específicas:\n")
  cat("   Se usa la notación de corchetes `[ , ]` para elegir solo las columnas\n")
  cat('   "Ciudad" y "Transporte" del resultado anterior.\n')
  cat('   Ejemplo: [ , c("Ciudad", "Transporte")]\n\n')
  
  cat("3. 🔹 Asignación a una nueva variable:\n")
  cat("   Todo el resultado se guarda en la variable `gastos_mayores_transporte`,\n")
  cat("   que contiene solo las ciudades con gasto en transporte superior a 70,\n")
  cat("   y únicamente las columnas relevantes.\n\n")
  
  cat("Este tipo de operación es muy útil para construir subconjuntos\n")
  cat("de datos según criterios específicos de análisis.\n")
}


