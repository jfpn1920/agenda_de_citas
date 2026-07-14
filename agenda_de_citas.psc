Algoritmo agenda_de_citas
	Definir opcion Como Entero
	Definir totalCitas Como Entero
	Definir posicion Como Entero
	Dimension id[100]
	Dimension nombre[100]
	Dimension fecha[100]
	Dimension hora[100]
	Dimension motivo[100]
	totalCitas <- 0
	//------------------------------------//
	//--|menu_principal_agenda_de_citas|--//
	//------------------------------------//
	Repetir
		Escribir "menu principal agenda de citas"
		Escribir "1) agregar cita"
		Escribir "2) editar cita"
		Escribir "3) eliminar cita"
		Escribir "4) buscar cita"
		Escribir "5) listado de citas"
		Escribir "6) ver detalles"
		Escribir "7) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//------------------//
			//--|agregar_cita|--//
			//------------------//
			1:
				Si totalCitas < 100 Entonces
					totalCitas <- totalCitas + 1
					id[totalCitas] <- totalCitas
					Escribir "agregar citas"
					Escribir "nombre del cliente:"
					Leer nombre[totalCitas]
					Escribir "fecha (dd/mm/aaaa):"
					Leer fecha[totalCitas]
					Escribir "hora:"
					Leer hora[totalCitas]
					Escribir "motivo:"
					Leer motivo[totalCitas]
					Escribir ""
					Escribir "cita registrada correctamente."
				SiNo
					Escribir "la agenda esta llena."
				FinSi
			//-----------------//
			//--|editar_cita|--//
			//-----------------//
			2:
				Escribir "editar citas"
				Si totalCitas = 0 Entonces
					Escribir "no existen citas registradas."
				SiNo
					Escribir ""
					Escribir "citas registradas a editar"
					Para i <- 1 Hasta totalCitas Hacer
						Escribir "id: ", id[i], " | cliente: ", nombre[i], " | fecha: ", fecha[i], " | hora: ", hora[i]
					FinPara
					Escribir ""
					Escribir "ingrese el id de la cita a editar:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCitas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir ""
							Escribir "datos actuales"
							Escribir "id: ", id[i]
							Escribir "cliente: ", nombre[i]
							Escribir "fecha: ", fecha[i]
							Escribir "hora: ", hora[i]
							Escribir "motivo: ", motivo[i]
							Escribir ""
							Escribir "ingrese los nuevos datos"
							Escribir "nombre del cliente:"
							Leer nombre[i]
							Escribir "fecha (dd/mm/aaaa):"
							Leer fecha[i]
							Escribir "hora:"
							Leer hora[i]
							Escribir "motivo:"
							Leer motivo[i]
							Escribir ""
							Escribir "cita actualizada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no existe una cita con ese ID."
					FinSi
				FinSi
			//-------------------//
			//--|eliminar_cita|--//
			//-------------------//
			3:
				Escribir "eliminar cita"
				Si totalCitas = 0 Entonces
					Escribir "no existen citas registradas."
				SiNo
					Escribir ""
					Escribir " citas registrados a eliminar"
					Para i <- 1 Hasta totalCitas Hacer
						Escribir "id: ", id[i], " | cliente: ", nombre[i], " | fecha: ", fecha[i], " | hora: ", hora[i]
					FinPara
					Escribir "ingrese el id de la cita a eliminar:"
					Leer idBuscar
					encontrado <- Falso
					posicion <- 0
					Para i <- 1 Hasta totalCitas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							posicion <- i
						FinSi
					FinPara
					Si encontrado Entonces
						Escribir ""
						Escribir "datos de la cita"
						Escribir "id: ", id[posicion]
						Escribir "cliente: ", nombre[posicion]
						Escribir "fecha: ", fecha[posicion]
						Escribir "hora: ", hora[posicion]
						Escribir "motivo: ", motivo[posicion]
						Escribir "¿desea eliminar esta cita?"
						Escribir "1) si"
						Escribir "2) no"
						Leer opcionEliminar
						Si opcionEliminar = 1 Entonces
							Si posicion < totalCitas Entonces
								Para j <- posicion Hasta totalCitas - 1 Hacer
									id[j] <- id[j + 1]
									nombre[j] <- nombre[j + 1]
									fecha[j] <- fecha[j + 1]
									hora[j] <- hora[j + 1]
									motivo[j] <- motivo[j + 1]
								FinPara
							FinSi
							totalCitas <- totalCitas - 1
							Escribir "cita eliminada correctamente."
						SiNo
							Escribir "eliminacion cancelada."
						FinSi
					SiNo
						Escribir "no existe una cita con ese id."
					FinSi
				FinSi
			//-----------------//
			//--|buscar_cita|--//
			//-----------------//
			4:
				Escribir "buscar cita"
				Si totalCitas = 0 Entonces
					Escribir "no existen citas registradas."
				SiNo
					Escribir ""
					Escribir "ingrese el id de la cita:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCitas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "agenda de citas encontrados"
							Escribir "id: ", id[i]
							Escribir "cliente: ", nombre[i]
							Escribir "fecha: ", fecha[i]
							Escribir "hora: ", hora[i]
							Escribir "motivo: ", motivo[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no existe una cita con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|listado_de_citas|--//
			//----------------------//
			5:
				Escribir "listado de citas"
				Si totalCitas = 0 Entonces
					Escribir "no existen citas registradas."
				SiNo
					Para i <- 1 Hasta totalCitas Hacer
						Escribir "cita #", i
						Escribir "id: ", id[i]
						Escribir "cliente: ", nombre[i]
						Escribir "fecha: ", fecha[i]
						Escribir "hora: ", hora[i]
						Escribir "motivo: ", motivo[i]
						Escribir ""
					FinPara
					Escribir "total de citas registradas: ", totalCitas
				FinSi
			//------------------//
			//--|ver_detalles|--//
			//------------------//	
			6:
				Escribir "detalles de la agenda de citas"
				Si totalCitas = 0 Entonces
					Escribir "no existen citas registradas."
				SiNo
					Escribir "listado de citas"
					Para i <- 1 Hasta totalCitas Hacer
						Escribir "id: ", id[i], " | cliente: ", nombre[i], " | fecha: ", fecha[i], " | hora: ", hora[i]
					FinPara
					Escribir "ingrese el id de la cita:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalCitas Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detales de la cita"
							Escribir "id: ", id[i]
							Escribir "cliente: ", nombre[i]
							Escribir "fecha: ", fecha[i]
							Escribir "hora: ", hora[i]
							Escribir "motivo: ", motivo[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no existe una cita con ese ID."
					FinSi
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//	
			7:
				Escribir "programa finalizado."
			De Otro Modo:
				Escribir "opcion invalida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo