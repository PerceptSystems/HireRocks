//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PS.HireRocks.Data.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class JobAttachment
    {
        public long JobAttachmentId { get; set; }
        public string AttachmentName { get; set; }
        public Nullable<long> JobId { get; set; }
        public string AttachmentOriginalName { get; set; }
    
        public virtual Job Job { get; set; }
    }
}
