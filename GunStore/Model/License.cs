using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GunStore
{
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
