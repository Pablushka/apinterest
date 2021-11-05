# Definiciones

A. Creacion de Usuario:
  1. Nombre de usuario
  2. Password
  3. Nombre
  4. DNI

```
rails g scaffold Users username:string password:string name:string dni:integer
```

Objetivos: La idea es que un usuario pueda  reservar visitas a los parques nacionales. Procedimiento:
1.  Elegir un parque nacional. Tienen que estar listados previamente los parques nacionales.
2.  Seleccionar un horario disponible. Establecer horarios disponibles para cada parque.
3.  Reservar. El horario tiene que estar habilitado.
4.  Asociar horario y parque con usuario.