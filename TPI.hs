data Cliente = UnCliente String Int [String] deriving Show

rodri = (UnCliente "Rodri" 55 [])

marcos = (UnCliente "Marcos" 40 ["Rodri"])

cristian = (UnCliente "Cristian" 2 [])

ana = (UnCliente "Ana" 120 ["Marcos", "Rodri"])


nombreCliente (UnCliente nombre _ _) = nombre

resistenciaCliente (UnCliente _ resistencia _) = resistencia

amigosCliente (UnCliente _ _ amigos) = amigos


cantidadAmigosCliente = length.amigosCliente

cantidadAmigosPor5 = (* 5).cantidadAmigosCliente 

soda cliente = clienteNuevo (nombreCliente cliente) (cantidadAmigosPor5 cliente) (amigosCliente cliente) 

listaClientes  = [rodri, marcos, cristian, ana]

--imprimir info
nombres = map nombreCliente listaClientes
resistencias = map resistenciaCliente listaClientes
imprimirListaAmigos = map amigosCliente listaClientes
--

--generar nuevo cliente
clienteNuevo nombreNuevo resistenciaNueva amigosNuevos = (UnCliente nombreNuevo resistenciaNueva amigosNuevos)



grogXD cliente = clienteNuevo (nombreCliente cliente) 0 (amigosCliente cliente) --compila



jarraLoca cliente = clienteNuevo (nombreCliente cliente) ((resistenciaCliente cliente)-10) (amigosCliente cliente)



--tintico cliente = clienteNuevo (nombreCliente cliente) ((resistenciaCliente cliente)+5) (amigosCliente cliente) --no esta terminada :(




--soda
muchasR fuerza = replicate fuerza 'r'

agregarErp cliente fuerza = "e" ++ muchasR fuerza ++ "p" ++ nombreCliente cliente

--soda cliente fuerza = clienteNuevo (agregarErp cliente fuerza) (resistenciaCliente cliente) (amigosCliente cliente)
--no andaaaa



