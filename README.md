# README Desafío E-Commerce

Punto 1
- Se adjunta archivo ERD.png en directorio principal

Punto 6 : Según su diseño,explicar al cliente cómo implementar la lista de productos del catálogo.(de un ejemplo en código).Si un modelo necesita código,debes entregar lo al cliente como parte de la implementación.

R: Se puede implementar un método o un helper que entregue la lista completa de productos disponibles, o mostrar en el index solamente una variante de producto si "if stock > 0".

Punto 7 : Implementar o explicar las modificaciones (si las hay) al modelo OrderItem para que siga funcionando sin que afecte el resto del sistema.

Se modifica para separar las variantes de un producto y pasa a ser OrderVariant. La tabla de las variantes es la que lleva el "stock" por separado de cada producto individualizado por talla y color y además da cuenta de eventuales diferencias en los precios para una variante de cada producto. 


Punto 8: Entregar concepto para descuento por cupón.
Se debe generar un modelo Discount, con un atributo de tipo de descuento (fijo o porcentaje) y la cantidad a descontar (percentage_off lo llamé inicialmente).El modelado se encuentra en el PNG inicial. Como los descuentos en porcentaje no pueden superar el 100%, se generaría un método en que "if percentage_off <= 100 , se le resta al total de Payment el total multiplicado por el decimal correspondiente. Por ejemplo, si percentage_off es 10, total en Payment cambia a (total-(total x 0.1))  Else (percentage_off > 100) el total pasa a ser TOTAL - percentage_off completo. 
Esto se puede asociar a un User_id en caso de descuentos individuales para personas o a un ID de usuario general que pudiese distribuirse en redes sociales. Además va asociado al modelo Payment para generar el descuento del atributo "total" de este último según el caso de porcentaje o neto.



