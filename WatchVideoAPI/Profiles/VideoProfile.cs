using AutoMapper;
using WatchVideoAPI.Models;
using WatchVideoAPI.DTO;

namespace WatchVideoAPI.Profiles;

public class VideoProfile : Profile
{
    public VideoProfile()
    {
        CreateMap<Video, VideoDTO>();
    }
}
