using System;

namespace GunStore
{
    
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


    
}
