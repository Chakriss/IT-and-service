using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;

namespace BlazorAppMySQL.Data
{

    public class Database
    {
        private readonly string MySQLConnectionString;

        public Database()
        {
            MySQLConnectionString = "Server=127.0.0.1; Database=EmployeeDB; Uid=root; Pwd= ";

        }

        public DataTable MySQLConnection_Datatable()
        {
            DataTable dtEmployee = new DataTable();

            using (MySqlConnection conn = new MySqlConnection(MySQLConnectionString))
            {
                conn.Open();

                MySqlCommand selectCommand = new MySqlCommand("SELECT * FROM employee LIMIT 15", conn);

                using (MySqlDataReader rdr = selectCommand.ExecuteReader())
                {
                    dtEmployee.Load(rdr);
                }

                conn.Close();
            }

            return dtEmployee;
        }

         public DataTable MySQLConnection_DatatableDepartment()
        {
            DataTable dtDepartment = new DataTable();

            using (MySqlConnection conn = new MySqlConnection(MySQLConnectionString))
            {
                conn.Open();

                MySqlCommand selectCommand = new MySqlCommand("SELECT * FROM department LIMIT 15", conn);

                using (MySqlDataReader rdr = selectCommand.ExecuteReader())
                {
                    dtDepartment.Load(rdr);
                }

                conn.Close();
            }

            return dtDepartment;
        }

        public DataTable MySQLConnection_DatatableProduct()
        {
            DataTable dtProduct = new DataTable();

            using (MySqlConnection conn = new MySqlConnection(MySQLConnectionString))
            {
                conn.Open();

                MySqlCommand selectCommand = new MySqlCommand("SELECT * FROM product LIMIT 15", conn);

                using (MySqlDataReader rdr = selectCommand.ExecuteReader())
                {
                    dtProduct.Load(rdr);
                }

                conn.Close();
            }

            return dtProduct;
        }

        public DataTable MySQLConnection_DatatableFruit()
        {
            DataTable dtFruit = new DataTable();

            using (MySqlConnection conn = new MySqlConnection(MySQLConnectionString))
            {
                conn.Open();

                MySqlCommand selectCommand = new MySqlCommand("SELECT * FROM fruit LIMIT 15", conn);

                using (MySqlDataReader rdr = selectCommand.ExecuteReader())
                {
                    dtFruit.Load(rdr);
                }

                conn.Close();
            }

            return dtFruit;
        }
    }
}