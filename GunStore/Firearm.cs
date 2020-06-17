using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
        public int PieceId { get; }
        public int OrderId { get;  }
        string LicenseAttached = null;
        public FirearmClass Type { get; }

        public Firearm(string name, int id, int oid, FirearmClass type)
        {
            this.Name = name;
            this.PieceId = id;
            this.OrderId = oid;
            this.Type = type;
        }
    }
}
