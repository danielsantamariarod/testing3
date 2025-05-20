# Tests.R
# Archivo de pruebas
test_trial1 <- function(gastos_mayores_transporte) {
	# Ciudades esperadas
	ciudades_esperadas <- c("Armenia", "Bogotá", "Bucaramanga y A.M.", "Cali", "Manizales y A.M.", "Medellín y A.M.")
	
	# Verificación
	if (all(c("Ciudad", "Transporte") %in% colnames(gastos_mayores_transporte))) {
	  rows = nrow(gastos_mayores_transporte)
	  cat (rows)
	  if ( rows == 6) {
	    if (all(gastos_mayores_transporte$Ciudad %in% ciudades_esperadas)) {
	      cat("La variable cumple con todas las condiciones.\n")
	    } else {
	      cat("Los valores de la columna 'Ciudad' no coinciden con los esperados.\n")
	    }
	  } else {
	    cat("La variable no tiene exactamente 6 filas.\n")
	  }
	} else {
	  cat("La variable no tiene las columnas requeridas.\n")
	}
}
