//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVC5Project.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Notlar
    {
        public int NotID { get; set; }
        public Nullable<int> DersID { get; set; }
        public Nullable<int> OgrID { get; set; }
        public Nullable<byte> Sınav1 { get; set; }
        public Nullable<byte> Sınav2 { get; set; }
        public Nullable<byte> Sınav3 { get; set; }
        public Nullable<byte> Proje { get; set; }
        public Nullable<decimal> Ortalama { get; set; }
        public Nullable<bool> Durum { get; set; }
    
        public virtual Dersler Dersler { get; set; }
        public virtual Ogrenciler Ogrenciler { get; set; }
    }
}