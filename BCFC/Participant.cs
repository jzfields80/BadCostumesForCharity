//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BCFC
{
    using System;
    using System.Collections.Generic;
    
    public partial class Participant
    {
        public Participant()
        {
            this.Costumes = new HashSet<Costume>();
        }
    
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Charity { get; set; }
        public string Motivation { get; set; }
        public string Image { get; set; }
    
        public virtual ICollection<Costume> Costumes { get; set; }
    }
}
