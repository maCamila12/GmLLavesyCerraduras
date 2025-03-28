from datetime import date, datetime
from typing import List


class Cliente:
    def __init__(self, id_cliente: int, nombre: str, direccion: str, telefono: str, correo: str, 
                 tipo_documento: str, numero_documento: str):
        self.__id_cliente = id_cliente
        self.__nombre = nombre
        self.__direccion = direccion
        self.__telefono = telefono
        self.__correo = correo
        self.__tipo_documento = tipo_documento
        self.__numero_documento = numero_documento

    def get_id_cliente(self):
        return self.__id_cliente
    
    def get_nombre(self):
        return self.__nombre
    
    def get_direccion(self):
        return self.__direccion
    
    def get_telefono(self):
        return self.__telefono
    
    def get_correo(self):
        return self.__correo
    
    def get_tipo_documento(self):
        return self.__tipo_documento
    
    def get_numero_documento(self):
        return self.__numero_documento
    
    # Setters
    def set_nombre(self, nombre):
        self.__nombre = nombre
    
    def set_direccion(self, direccion):
        self.__direccion = direccion
    
    def set_telefono(self, telefono):
        self.__telefono = telefono
    
    def set_correo(self, correo):
        self.__correo = correo

    def realizar_pago(self):
        pass

    def realizar_pedido(self):
        pass

    def agendar_cita(self):
        pass

class Empleado:
    def __init__(self, id_empleado: int, nombre: str, direccion: str, telefono: str, correo: str, 
                 salario: float, puesto: str):
        self.__id_empleado = id_empleado
        self.__nombre = nombre
        self.__direccion = direccion
        self.__telefono = telefono
        self.__correo = correo
        self.__salario = salario
        self.__puesto = puesto

    def get_id_empleado(self):
        return self.__id_empleado
    
    def get_nombre(self):
        return self.__nombre
    
    def get_direccion(self):
        return self.__direccion
    
    def get_telefono(self):
        return self.__telefono
    
    def get_correo(self):
        return self.__correo
    
    def get_salario(self):
        return self.__salario
    
    def get_puesto(self):
        return self.__puesto

    # Setters
    def set_salario(self, salario):
        self.__salario = salario
    
    def set_puesto(self, puesto):
        self.__puesto = puesto

    def atender_cita(self):
        pass

class Pago:
    def __init__(self, id_pago: int, fecha_pago: date, total: float, metodo_pago: str):
        self.__id_pago = id_pago
        self.__fecha_pago = fecha_pago
        self.__total = total
        self.__metodo_pago = metodo_pago

    def get_id_pago(self):
        return self.__id_pago
    
    def get_fecha_pago(self):
        return self.__fecha_pago
    
    def get_total(self):
        return self.__total
    
    def get_metodo_pago(self):
        return self.__metodo_pago

    def set_total(self, total):
        self.__total = total
    
    def set_metodo_pago(self, metodo_pago):
        self.__metodo_pago = metodo_pago

    def procesar_pago(self):
        pass

class Pedido:
    def __init__(self, id_pedido: int, fecha_pedido: date, precio: float):
        self.__id_pedido = id_pedido
        self.__fecha_pedido = fecha_pedido
        self.__precio = precio

    def get_id_pedido(self):
        return self.__id_pedido
    
    def get_fecha_pedido(self):
        return self.__fecha_pedido
    
    def get_precio(self):
        return self.__precio

    def set_precio(self, precio):
        self.__precio = precio

    def confirmar_pedido(self):
        pass

class Producto:
    def __init__(self, id_producto: int, nombre: str, descripcion: str, precio: float):
        self.__id_producto = id_producto
        self.__nombre = nombre
        self.__descripcion = descripcion
        self.__precio = precio

    def get_id_producto(self):
        return self.__id_producto
    
    def get_nombre(self):
        return self.__nombre
    
    def get_descripcion(self):
        return self.__descripcion
    
    def get_precio(self):
        return self.__precio

    def set_nombre(self, nombre):
        self.__nombre = nombre

    def set_precio(self, precio):
        self.__precio = precio


class Proveedor:
    def __init__(self, id_proveedor: int, nombre: str, direccion: str, telefono: str, correo: str):
        self.__id_proveedor = id_proveedor
        self.__nombre = nombre
        self.__direccion = direccion
        self.__telefono = telefono
        self.__correo = correo

    def get_id_proveedor(self):
        return self.__id_proveedor
    
    def get_nombre(self):
        return self.__nombre
    
    def get_direccion(self):
        return self.__direccion
    
    def get_telefono(self):
        return self.__telefono
    
    def get_correo(self):
        return self.__correo

    def set_nombre(self, nombre):
        self.__nombre = nombre

    def suministrar_producto(self):
        pass

class Servicio:
    def __init__(self, id_servicio: int, fecha_servicio: date, descripcion: str, costo: float):
        self.__id_servicio = id_servicio
        self.__fecha_servicio = fecha_servicio
        self.__descripcion = descripcion
        self.__costo = costo

    def get_id_servicio(self):
        return self.__id_servicio
    
    def get_fecha_servicio(self):
        return self.__fecha_servicio
    
    def get_descripcion(self):
        return self.__descripcion
    
    def get_costo(self):
        return self.__costo

    def set_descripcion(self, descripcion):
        self.__descripcion = descripcion
    
    def set_costo(self, costo):
        self.__costo = costo

    def realizar_servicio(self):
        pass

class Cita:
    def __init__(self, id_cita: int, nombre_cliente: str, nombre_tecnico: str, servicio: str, 
                 fecha_hora: datetime, estado: str):
        self.__id_cita = id_cita
        self.__nombre_cliente = nombre_cliente
        self.__nombre_tecnico = nombre_tecnico
        self.__servicio = servicio
        self.__fecha_hora = fecha_hora
        self.__estado = estado

    def get_id_cita(self):
        return self.__id_cita
    
    def get_nombre_cliente(self):
        return self.__nombre_cliente
    
    def get_nombre_tecnico(self):
        return self.__nombre_tecnico
    
    def get_servicio(self):
        return self.__servicio
    
    def get_fecha_hora(self):
        return self.__fecha_hora
    
    def get_estado(self):
        return self.__estado

    def set_estado(self, estado):
        self.__estado = estado

    def agendar(self):
        pass
