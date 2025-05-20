# Tests.R
# Archivo de pruebas
test_trial1 <- function() {
	  if (estado == "aprobado") {
	  cat("El estudiante ha aprobado el curso.\n")
	} else if (estado == "reprobado") {
	  cat("El estudiante ha reprobado el curso.\n")
	} else {
	  cat("Estado no reconocido.\n")
	}
}
