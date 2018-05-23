namespace Bookshop
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Cart")]
    public partial class Cart
    {
        [Key]
        public int TransID { get; set; }

        public int UserID { get; set; }

        public int BookID { get; set; }

        public int Quantity { get; set; }
    }
}
