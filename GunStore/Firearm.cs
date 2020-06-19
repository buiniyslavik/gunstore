using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GunStore
{
    public enum FirearmClass : int
    {
        SHOTGUN = 0,
        RIFLE = 1,
        LESSLETHAL = 2,
        NOTAGUN = -1
    }
    public sealed class Firearm
    {
        public string Name { get; }
        public int PieceId { get; set; }
        public int TypeId { get;  }
        
        public FirearmClass Type { get; }

        public Firearm(string name, int id, int pid, FirearmClass type)
        {
            this.Name = name;
            this.TypeId = id;
            this.PieceId = pid;
            this.Type = type;
        }

        static public Firearm ParseFromRow(DataGridViewRow r)
        {
            string name = r.Cells["названиеDataGridViewTextBoxColumn"].Value.ToString();
            FirearmClass type = FirearmClass.NOTAGUN;

            DataGridViewCell cell = null;
            if (r.Cells["номерТипаГсDataGridViewTextBoxColumn"].Value.ToString() != String.Empty)
            {
                type = FirearmClass.SHOTGUN;
                cell = r.Cells["номерТипаГсDataGridViewTextBoxColumn"];
            }
            if (r.Cells["номерТипаНарDataGridViewTextBoxColumn"].Value.ToString() != String.Empty)
            {
                type = FirearmClass.RIFLE;
                cell = r.Cells["номерТипаНарDataGridViewTextBoxColumn"];
            }
            if (r.Cells["номерТипаОоопDataGridViewTextBoxColumn"].Value.ToString() != String.Empty)
            {
                type = FirearmClass.LESSLETHAL;
                cell = r.Cells["номерТипаОоопDataGridViewTextBoxColumn"];
            }
            int piece = -1;
            int typeId = Convert.ToInt32(cell.Value);

            return new Firearm(name, typeId, piece, type);
        }
    }
    /*
    public enum LicenseClass : int
    {
        SHOTGUN = 0,
        RIFLE = 1,
        LESSLETHAL = 2,
        NOTAGUN = -1
    } */

    public sealed class License
    {        
        public string Number { get; set; }
        public string HolderName { get; set; }
        public DateTime IssueDate { get; set; }
        public DateTime ExpiryDate { get; set; }
        public string Issuer { get; set; }
        public FirearmClass Type { get; }

        public License(string number, string holderName, DateTime issueDate, DateTime expiryDate, string issuer, FirearmClass type)
        {
            Number = number;
            HolderName = holderName;
            IssueDate = issueDate;
            ExpiryDate = expiryDate;
            Issuer = issuer;
            Type = type;
        }
        public License(FirearmClass type)
        {
            Type = type;
        }

    }
}
