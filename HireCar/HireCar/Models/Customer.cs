//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HireCar.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Customer
    {
        public Customer()
        {
            this.Bookings = new HashSet<Booking>();
        }
    
        public int CustomerID { get; set; }
        public string CustomerName { get; set; }
        public string CustCompanyName { get; set; }
        public string CustomerEmail { get; set; }
        public string CustomerMobile { get; set; }
        public string CustomerNumber { get; set; }
        public string CompanyAddress { get; set; }
        public string HearAboutUs { get; set; }
    
        public virtual ICollection<Booking> Bookings { get; set; }
    }
}
