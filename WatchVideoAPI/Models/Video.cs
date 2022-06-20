using System;
using System.ComponentModel.DataAnnotations;

namespace WatchVideoAPI.Models;

public class Video
{
    [Key]
    public int Id { get; set; }
    [Required]
    public string Title { get; set; }
    public string? Description { get; set; }
    [Required]
    public string VideoSrc { get; set; }
    [Required]
    public DateTime UploadDate { get; set; }
    [Required]
    public string VideoThumbnail { get; set; }
}
