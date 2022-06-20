using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Threading.Tasks;
using WatchVideoAPI.DTO;
using WatchVideoAPI.Models;
using WatchVideoAPI.Services;
using AutoMapper;
using System.Text.Json;

namespace WatchVideoAPI.Controllers;

[ApiController]
[Route("/")]
public class VideosController
{
    private readonly ILogger<VideosController> _logger;
    private readonly IVideoService _video;
    private readonly IMapper _mapper;

    public VideosController(ILogger<VideosController> logger, IVideoService video, IMapper mapper)
    {
        _logger = logger;
        _video = video;
        _mapper = mapper;
    }

    [HttpGet("Videos/{page}")]
    public async Task<JsonResult> GetVideos(int? page = null, [FromQuery] string? search = null)
    {
        _logger.LogInformation($"Rozpoczeto metode GetVideos z parametrami page:{page}, search:{null}");
        IList<Video> videos = await _video.GetVideosAsync(page, search);
        IList<VideoDTO> videosDto = _mapper.Map<IList<VideoDTO>>(videos);
        var getVideosDto = new GetVideosDto(videosDto);
        _logger.LogInformation($"Zwracanie danych w odpowiedzi na metode GetVideos, ilosc elementow:{getVideosDto.videos.Count}, nastepna strona:{getVideosDto.nextPage}");
        return new JsonResult(getVideosDto);
    }

    [HttpGet("Video/{id}")]
    public async Task<JsonResult> GetVideo(int id)
    {
        _logger.LogInformation($"Rozpoczeto metode GetVideo z parametrami id:{id}");
        Video? video = await _video.GetVideoAsync(id);
        VideoDTO videoDto = _mapper.Map<VideoDTO>(video);
        _logger.LogInformation($"Zwracanie danych w odpowiedzi na metode GetVideo: {JsonSerializer.Serialize(videoDto)}");
        return new JsonResult(videoDto);
    }
}

