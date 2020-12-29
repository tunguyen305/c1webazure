using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GridViewIntro.Models
{
    public class SampleData
    {
        public static DataTable GetTable(int start,int count)
        {
            // Here we create a DataTable with four columns.
            DataTable table = new DataTable();
            table.Columns.Add("ID", typeof(int));
            table.Columns.Add("Dosage", typeof(string));
            table.Columns.Add("Drug", typeof(string));
            table.Columns.Add("Patient", typeof(string));
            table.Columns.Add("Date", typeof(DateTime));
            table.Columns.Add("Empty", typeof(string));
            table.Columns.Add("Active", typeof(bool));
            table.PrimaryKey = new DataColumn[] { table.Columns["Student Id"] };
            // Here we add five DataRows.
            var Drugs = ",,,Indocin,Enebrel,Hydralazine,Combivent,Dilantin".Split(',');
            var Patients = ",,,David,Sam,Christoff,Janet,Melanie".Split(',');
            for (int i = start; i < start+count; i++)
            {
                table.Rows.Add(i,string.Empty, Drugs[i % Drugs.Length], Patients[i % Patients.Length], new DateTime(),string.Empty, i % 2 == 0);
            }
            return table;
        }

        public static DataTable GetFieldsData()
        {
            DataTable table = new DataTable();
            table.Columns.Add("FieldB", typeof(string));
            table.Columns.Add("FieldC", typeof(string));
            table.PrimaryKey = new DataColumn[] { table.Columns["Student Id"] };
            
            for (int i = 0; i < 5; i++)
            {
                table.Rows.Add("Field B"+i.ToString(), i.ToString() + " - Field C");
            }
            return table;
        }
    }
}