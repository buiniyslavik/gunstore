using System;
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
        public int TypeId { get; }

        public FirearmClass Type { get; }

        public Firearm(string name, int id, int pid, FirearmClass type)
        {
            Name = name;
            TypeId = id;
            PieceId = pid;
            Type = type;
        }

    }


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
