using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;
namespace Negocio
{
    public class NegocioLocalidad
    {
       
        public DataTable getLocalidades(string id)
        {
            DatosLocalidades datos = new DatosLocalidades();
            return datos.getLocalidades(id);
        }
    }
}
