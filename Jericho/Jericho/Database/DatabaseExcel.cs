using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data.Odbc;

namespace Jericho.Database
{
    public class DatabaseExcel
    {
        #region Variables
        #region ConnectionStringJet.OLEDB.4.0
       public  string provider = @"Provider = Microsoft.Jet.OLEDB.4.0;";
        public string dataSource = @"Data Source=C:\mydatabase.mdb;";
        public string userId = @"User Id=admin;Password=;";
        public string extended= @"Extended Properties='Excel 8.0;HDR=Yes;IMEX=1';";
        #endregion
        #endregion
        #region Properties
        public string ConnectionString { get; set; }
        #endregion
        #region Function
        public void setConnectionStringXLS(string filePath)
        {
            #region Variables
            string connecitonString = string.Empty;
            OleDbConnection conOle=null;
            #endregion
            #region SetVariables
            ConnectionString = provider + filePath + userId + extended;
            #endregion
            #region TryConnection
            try
            {
                conOle = new OleDbConnection(ConnectionString);
                conOle.Open();
            }
            catch (OleDbException e)
            {
                string errorMessages = "";

                for (int i = 0; i < e.Errors.Count; i++)
                {
                    errorMessages += "Index #" + i + "\n" +
                                     "Message: " + e.Errors[i].Message + "\n" +
                                     "NativeError: " + e.Errors[i].NativeError + "\n" +
                                     "Source: " + e.Errors[i].Source + "\n" +
                                     "SQLState: " + e.Errors[i].SQLState + "\n";
                }
            }
            finally
            {
                conOle.Close();
            }
            #endregion
        }
        
        #endregion
    }
}