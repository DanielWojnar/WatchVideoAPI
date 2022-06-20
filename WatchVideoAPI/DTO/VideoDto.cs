using System;

namespace WatchVideoAPI.DTO;

public class VideoDTO
{
    public int Id { get; set; }
    public string Title { get; set; }
    public string? Description { get; set; }
    public string VideoSrc { get; set; }
    public DateTime UploadDate { get; set; }
    public string VideoThumbnail { get; set; }
}
