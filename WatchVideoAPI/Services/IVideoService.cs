using System.Collections.Generic;
using System.Threading.Tasks;
using WatchVideoAPI.Models;

namespace WatchVideoAPI.Services;

public interface IVideoService
{
    Task<IList<Video>> GetVideosAsync(int? page, string? search);
    Task<Video?> GetVideoAsync(int id);
}
