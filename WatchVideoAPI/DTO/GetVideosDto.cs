using System.Collections.Generic;
using System.Linq;

namespace WatchVideoAPI.DTO;

public class GetVideosDto
{
    public bool nextPage { get; set; }
    public IList<VideoDTO> videos { get; set; }

    public GetVideosDto(IList<VideoDTO> vids)
    {
        nextPage = vids.Count > Constants.Pages.perPage ? true : false;
        videos = vids.Take(Constants.Pages.perPage).ToList();
    }
}
