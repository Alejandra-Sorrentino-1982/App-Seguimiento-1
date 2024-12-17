
/* esto es para que incluya un confirmar antes de eliminar un registro*/
const btndelete = document.querySelectorAll('.btn-delete')

if (btndelete) { 
    
    const btneliminar = Array.from(btndelete);
    btneliminar.forEach((btn) => /* recorre botón eliminar*/ 
        {btn.addEventListener('click', (e) => /* escucha por evento click*/
            
            { if (!confirm ('Confirme que desea eliminar el registro')) /* pregunta si se elimina el registro*/
                e.preventDefault();  /* si da cancelar o cierra la ventana, previene el evento*/
            }) 
        } ) 

} /* si da aceptar, por default no se ejecuta el arreglo*/