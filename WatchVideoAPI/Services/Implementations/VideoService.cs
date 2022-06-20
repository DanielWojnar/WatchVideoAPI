using System.Collections.Generic;
using System.Threading.Tasks;
using WatchVideoAPI.Data;
using WatchVideoAPI.Models;
using System.Linq;
using Microsoft.EntityFrameworkCore;

namespace WatchVideoAPI.Services.Implementations;

public class VideoService : IVideoService
{
    private readonly WatchVideoContext _context;

    public VideoService(WatchVideoContext context)
    {
        _context = context;
    }

    public async Task<IList<Video>> GetVideosAsync(int? page, string? search)
    {
        var query = from v in _context.Videos
                    select v;
        
        if(search != null)
        {
            query = query.Where(v => v.Title.Contains(search));
        }

        query = query.OrderBy(x => x.Id);

        if(page != null)
        {
            query = query.Skip((int)page * Constants.Pages.perPage);
        }

        query = query.Take(Constants.Pages.perPage + 1);

        IList<Video> result = await query.ToListAsync();

        return result;
    }

    public async Task<Video?> GetVideoAsync(int id)
    {
        Video? result = await (from v in _context.Videos
                               where v.Id == id
                               select v).FirstOrDefaultAsync();
        return result;
    }
}
