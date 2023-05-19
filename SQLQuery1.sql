use Proyecto

create table Color_Producto (
Id_Color_Producto int identity (1,1) not null Primary key ,
Nombre varchar(20)
)

create table Detalle_Producto (
Id_Detalle_producto int identity (1,1) not null Primary key,
Nombre Varchar(20),
Imagen image
)


create table Producto (
Id_Producto int identity (1,1) not null Primary key, 
Id_Detalle_Producto int,
Id_Color_Producto int, 
Descripcion nvarchar(20),
Precio char(10),

Constraint FK_Producto_Id_Detalle_Producto foreign key (Id_Detalle_producto) references Detalle_Producto(Id_Detalle_producto),
Constraint FK_Producto_Id_Color_Producto  foreign key (Id_Color_Producto) references Color_Producto(Id_Color_Producto)
)