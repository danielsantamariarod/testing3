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
}

